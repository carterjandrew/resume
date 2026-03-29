#set page(
  margin: (25pt),
)
#set par(
  spacing: 2em,
)
#show heading.where(level: 1): it => [
  #set text(
    size: 13pt,
    weight: "bold",
  )
  #text(it)
  #v(-13pt)
  #line(length: 100%, stroke: 2pt + black)
]
#align(center)[
  #set par(spacing: 0em)
  #text(
    weight: "bold",
    size: 20pt,
  )[Carter Andrew]
]

#align(center)[
  *US/UK Dual Citizen*
]

carter.andrew\@colorado.edu #h(1fr)
1(970)708-1626 #h(1fr)
carterjandrew.github.io #h(1fr)
3015 Ash Ave, Boulder CO \
= EDUCATION
#import "degrees.typ": degrees
#strong[#underline[University of Colorado Boulder]
#h(1fr) Aug 2020-Apr 2025]
\
#for (name, gpa) in degrees [
  #emph[#name]
  #h(1fr)
  GPA: 
  #strong[#{gpa + "/4.0"}] \
]

= STRONG TECHNICAL SKILLS
#[
  #set par(spacing: 1em)
  Neural Net Architecture #h(1fr)
  Python, R, Go, Javascript #h(1fr)
  AWS, Google Cloud #h(1fr)
  Arch Linux, NixOS \
]

= PROFESSIONAL EXPIRIENCE
#import "expirience.typ": expirience

#for (company, skills, role, period, points) in expirience [
  #block(breakable: false)[
    #strong[#company] #h(1fr) #strong[#period] \
    #underline[#emph[#role]] #h(1fr) #skills
    #set list(marker: [--])
    #for point in points [
      - #point
    ]
  ]
]

= LEADERSHIP EXPIRIENCE
#import "leadership.typ": leaderships

#for (company, role, period, points) in leaderships [
  #strong[#company #h(1fr) #period] \
  #underline[#emph[#role]]
  #set list(marker: [--])
  #for point in points [
    - #point
  ]
]

= RELEVANT PROJECTS
#import "projects.typ": naive_bayes_for_ultrasound_distinction, filler_frames, fake_news_classifier, where_to_study, buff_bikes, class_search_plus_plus, k_tile, booklore_nix

#for (name, date, event, skills, points) in (naive_bayes_for_ultrasound_distinction, fake_news_classifier, where_to_study, buff_bikes, booklore_nix ) [
  #block(breakable: false)[
    #strong[#name] #h(1fr) #strong[#date] \
    #underline[#emph[#event]] #h(1fr) #skills
    #set list(marker: [--])
    #for point in points [
      - #point
    ]
  ]
]

= VOULENTEER ROLES
#import "voulenteer.typ": voulenteers 

#for (company, role, period, points) in voulenteers [
  #strong[#company #h(1fr) #period] \
  #set list(marker: [--])
  #for point in points [
    - #point
  ]
]

= HONORS AND AWARDS
#import "awards.typ": awards
#for (name, date) in awards [
  #emph[#name]
  #h(1fr)
  #strong[#date] \
]


#align(center)[*_References provided upon request_*]
