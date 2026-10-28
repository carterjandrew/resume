#let bikeKitchen = (
  company: "Bozeman Bike Kitchen",
  role: "Voulenteer",
  period: "32 Hours",
  points: (
    [Worked with donated bikes to either salvage parts or repair for donations or resale],
  )
)
#let arizonaHumaneSociety = (
  company: "Arizona Humane Society",
  role: "Voulenteer",
  period: "21 Hours",
  points: (
    [Helped clean kennels, feed animals, do inventory, administer medications, and oversee visitations for adoption center and intensive care unit],
  )
)
#let nyagiVoulenteer = (
  company: "Nyagi Project",
  role: "IT Support",
  period: "8 Days",
  points: (
    [*Went into the field in Somaliland* to provide support for ultrasound and educational software],
  )
)
#let nixVoulenteer = (
  company: "NixPkgs",
  role: "Booklore Maintainer",
  period: "ongoing",
  points: (
    [*Maintain setec, a secret manager built around Tailscale*],
    [Maintain _Remember The Milks_ desktop application for the nixOS platform],
    [Maintain _Booklore_, a self hosted library application, for nixOS allowing easy declarative configuration],
  )
)

#let secretSpec = (
  company: "SecretSpec",
  role: "Setec interface maintainer",
  period: "ongoing",
  points: (
    [*Maintain the interface to setec for a generalized secret library*],
  )
)

#let openSoundScape = (
  company: "OpenSoundScape",
  role: "Contributor",
  period: "ongoing",
  points: (
    [*Help maintain library dependency versions through upgrades*],
    [Implemented feature to filter audio recordings by dates and times found in metadata]

  )
)

#let wildlifeRescue = (
  company: "Antigua Exotic Wildlife Rescue",
  role: "Assistant",
  period: "ongoing",
  points: (
    [Help with simple duties like cleaning and preparing food for the animals],
  )
)


#let voulenteers = (
  nixVoulenteer, secretSpec, openSoundScape, wildlifeRescue, nyagiVoulenteer, arizonaHumaneSociety, bikeKitchen
)

