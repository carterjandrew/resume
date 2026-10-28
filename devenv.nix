{
  pkgs,
  config,
  ...
}:

{
  languages.typst.enable = true;

  packages = with pkgs; [ git ripgrep zathura poppler-utils ];

  scripts.resume-build.exec = ''
    set -euo pipefail
    cd "${config.devenv.root}"
    mkdir -p build
    # Nix's reproducible-build timestamp would date the cover letter to 1980.
    unset SOURCE_DATE_EPOCH
    typst compile --root . main.typ build/main.pdf
  '';
  scripts.resume-watch.exec = ''
    set -euo pipefail
    cd "${config.devenv.root}"
    mkdir -p build
    unset SOURCE_DATE_EPOCH
    exec typst watch --root . main.typ build/main.pdf
  '';
  scripts.resume-view.exec = ''
    set -euo pipefail
    resume-build
    exec zathura "${config.devenv.root}/build/main.pdf"
  '';
  scripts.resume-review.exec = ''
    set -euo pipefail
    cd "${config.devenv.root}"
    resume-build
    mkdir -p build/review
    rm -f build/review/page-*.png build/review/main.txt
    pdftoppm -png -r 120 build/main.pdf build/review/page
    pdftotext -layout build/main.pdf build/review/main.txt
    pdfinfo build/main.pdf
  '';

  enterShell = ''
    echo "Resume tools: resume-build | resume-watch | resume-view | resume-review"
  '';

  enterTest = ''
    set -euo pipefail
    typst --version
    tinymist --version
    resume-review
    test -s "${config.devenv.root}/build/main.pdf"
    test -s "${config.devenv.root}/build/review/main.txt"
    for page in "${config.devenv.root}"/build/review/page-*.png; do
      test -s "$page"
    done
  '';
}
