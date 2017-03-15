// let captain = "Kathryn Janeway"
// print(captain)

let students = 3
let tiyStaff = 6
var totalPeople = students + tiyStaff
print(totalPeople)
totalPeople = 20
print(totalPeople)

let iPhonePrice = 649.95
let iPhonesSold = 10
let totalValue = iPhonePrice * Double(iPhonesSold)
print(totalValue)

let headphoneJack = false


let statement = "The Spring iOS class has " + String(students) + " students."
let betterStatement = "The Spring iOS class has \(students + 1) people."
// print(statement)
// print(betterStatement)

let tiy: String = "The Iron Yard"

var shipCaptains = ["Malcolm Reynolds", "Jean-Luc Picard", "James T. Kirk", "Han Solo"]
// print(shipCaptains[1])
shipCaptains.append("Kathryn Janeway")
// print(shipCaptains)

for name in shipCaptains
{
  print(name)
}


let apples = 9
let oranges = 4

if apples < oranges
{
  print("We have less apples!")
}
else
{
  print("We have more apples!")
}