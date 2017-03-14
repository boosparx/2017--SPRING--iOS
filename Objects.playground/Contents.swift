import Foundation

//let subtotal = 25.76
//let tipPercentage = 0.2
//let tipAmount = subtotal * tipPercentage
//let total = subtotal + tipAmount
//print(total)

func calculateTip(subtotal: Double, tipPercentage: Double) -> Double
{
  let tipAmount = subtotal * tipPercentage
  return tipAmount
}

let billAmount = 25.95

let tipAmount = calculateTip(subtotal: billAmount, tipPercentage: 0.2)
print("$\(tipAmount)")

class Car
{
  var make: String
  var model: String
  var color: String
  
  var fuelLevel = 1.0
  var odometer = 0.0
  
  init(make: String, model: String, color: String)
  {
    self.make = make
    self.model = model
    self.color = color
  }
  
  func description() -> String
  {
    let carDescription = "\(color) \(make) \(model)"
    return carDescription
  }
  
  func drive()
  {
    // fuelLevel = fuelLevel - 0.2
    fuelLevel -= 0.2
    odometer += 5.0
  }
}

let ponycar = Car(make: "Ford", model: "Mustang", color: "red")
print(ponycar.description())

let familycar = Car(make: "Honda", model: "Accord", color: "white")
print(familycar.description())

ponycar.drive()
print(ponycar.fuelLevel)
print(ponycar.odometer)

ponycar.drive()
print(ponycar.fuelLevel)
print(ponycar.odometer)

print(familycar.fuelLevel)
print(familycar.odometer)
