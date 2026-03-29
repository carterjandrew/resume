#set page(
  margin: (15pt),
)
#show heading.where(level: 1): it => [
  #set text(
    size: 11pt,
    weight: "bold",
  )
  #text(it)
  #v(-7pt)
  #line(length: 100%, stroke: 2pt + black)
]
#align(center)[
  #text(
    weight: "bold",
    size: 20pt,
  )[Carter Andrew]
]

#v(-15pt)
#align(center)[
  *US/UK Dual Citizen*
]

carter.andrew\@colorado.edu #h(1fr)
1(970)708-1626 #h(1fr)
carterjandrew.github.io #h(1fr)
3015 Ash Ave, Boulder CO

#v(-5pt)
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

= TECHNICAL  SKILLS
Neural Net Architecture #h(1fr)
Python, R, Go, Javascript #h(1fr)
AWS, Google Cloud #h(1fr)
Arch Linux, NixOS \

= PROFESSIONAL EXPIRIENCE
#import "expirience.typ": onxMaps, quadrantHealth, sevenD, nyagi, conservationMetrics, naturaBolivia

#let expirience = (
  naturaBolivia, onxMaps, quadrantHealth, nyagi, conservationMetrics
)

#for (company, role, period, points) in expirience [
  #strong[#underline[#company] | #emph[#role] #h(1fr) #period]
  #set list(marker: [--])
  #for point in points [
    - #point
  ]
]

= LEADERSHIP EXPIRIENCE
#import "leadership.typ": leaderships

#for (company, role, period, points) in leaderships [
  #strong[#underline[#company] | #emph[#role] #h(1fr) #period]
  #set list(marker: [--])
  #for point in points [
    - #point
  ]
]

= VOULENTEER EXPIRIENCE
#import "voulenteer.typ": voulenteers 

#for (company, role, period, points) in voulenteers [
  #strong[#underline[#company] | #emph[#role] #h(1fr) #period]
  #set list(marker: [--])
  #for point in points [
    - #point
  ]
]
