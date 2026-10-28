# Resumes

`main.typ` combines the cover letter and CV. Shared content lives in `resume/`
and root `awards.typ`.

## Development

With Nix and devenv installed, enter `devenv shell`. The environment includes
Typst, Tinymist, Zathura, Poppler, Git, and ripgrep. Commit `devenv.lock` to pin
tool versions; use `devenv update` for intentional updates.

| Command | Result |
| --- | --- |
| `resume-build` | Compile to `build/main.pdf` |
| `resume-watch` | Rebuild on source changes; stop with Ctrl-C |
| `resume-view` | Build and open Zathura; requires a graphical session |
| `resume-review` | Build, print metadata, render `build/review/page-*.png`, and extract layout-preserving text to `build/review/main.txt` |

Commands work from project subdirectories. Run `resume-watch` in one terminal
and `resume-view` in another; Zathura reloads the changing PDF. For a single
command use `devenv shell resume-build`. Generated artifacts are ignored.
Run headless build and review checks with `devenv test`.

## Editor and activation

Start your editor from the devenv shell so it finds `tinymist`; enable your
editor's Typst/Tinymist integration. Optionally install direnv, enable its shell
hook, and run `direnv allow` to use the included `.envrc`. Manual shell entry
works without direnv.

## Document status

`main.typ` is the supported entrypoint. The older `resume/resume.typ` still has
outdated imports and experience-data assumptions and is excluded from checks.
The cover uses today's date, so builds on different days can differ.
