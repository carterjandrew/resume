#set page(
  margin: (25pt),
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

carter.andrew\@colorado.edu #h(1fr)
1(970)708-1626 #h(1fr)
carterjandrew.github.io #h(1fr)
3015 Ash Ave, Boulder CO

= EDUCATION
#let degrees = (
  (
    name: "Accelerated Masters of Science, Data Science and Machine Learning",
    gpa: "3.7"
  ),
  (
    name: "Bachelor of Science, Computer Science",
    gpa: "3.6"
  ),
  (
    name: "Engineering Leadership Certificate",
    gpa: "3.9"
  )
)
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
Python, R, Java, C, C++ #h(1fr)
Javascript, PHP, Typescrip, Go #h(1fr)
Tensorflow, Pytorch\
AWS, GCloud, GraphQL #h(1fr)
React, Laravel, Vue #h(1fr)
OpenGL3, ShaderLab #h(1fr)
Arch Linux, NixOS \

= PROFESSIONAL EXPIRIENCE
#import "expirience.typ": expirience

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
