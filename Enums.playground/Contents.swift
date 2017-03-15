// Dictionaries

var occupations = ["Jean-Luc Picard": "captain", "Geordi LaForge": "chief engineer"]
print(occupations["Jean-Luc Picard"]!)

//Enumeration - enums for short

enum CompassPoint: String
{
  case north
  case south
  case east
  case west
}

var directionToHead = CompassPoint.north
directionToHead = .east

switch directionToHead
{
case .north:
  print("Lots of planets have a north")
case .south:
  print("Watch out for penguins")
case .east:
  print("Where the sun rises")
case .west:
  print("Where the skies are blue")
}

enum Planet: Int
{
  case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let somePlanet = Planet.earth
switch somePlanet
{
case .earth:
  print("mostly harmless")
default:
  print("not a safe place for humans")
}

let earthsOrder = Planet.earth.rawValue
let sunsetDirection = CompassPoint.west.rawValue

let possiblePlanet = Planet(rawValue: 7)

let positionToFind = 5

if let aPlanet = Planet(rawValue: positionToFind)
{
  switch aPlanet
  {
  case .earth:
    print("mostly harmless")
  default:
    print("not a safe place for humans")
  }
}








