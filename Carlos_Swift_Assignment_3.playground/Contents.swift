//Super Class
class Ship {
  let name: String
  let year: Int
  let countryOfOrigin: String

  init(name: String, year: Int, countryOfOrigin: String) {
      self.name = name
      self.year = year
      self.countryOfOrigin = countryOfOrigin
  }
}

// CruiseShip Subclass

class CruiseShip: Ship {
  let maxCapacity: Int
  let oceanOfOperation: String
  var currentPassengerCount: Int = 100

  init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
      self.maxCapacity = maxCapacity
      self.oceanOfOperation = oceanOfOperation
      super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
  }

  func addPassenger() {
      if currentPassengerCount < maxCapacity {
          currentPassengerCount += 8
          print("Passenger added. Current passenger count: \(currentPassengerCount)")
      } else {
          print("No more room for passengers.")
      }
  }

  func printPassengerCount() {
      print("Current passenger count: \(currentPassengerCount)")
  }
}

// CargoShip Subclass

class CargoShip: Ship {
  let maxCargoCapacity: Int
  var currentCargoCount: Int = 100
  let isInternational: Bool

  init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, isInternational: Bool) {
      self.maxCargoCapacity = maxCargoCapacity
      self.isInternational = isInternational
      super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
  }

  func addCargo() {
      if currentCargoCount < maxCargoCapacity {
          currentCargoCount += 16
          print("Cargo added. Current cargo count: \(currentCargoCount)")
      } else {
          print("No more room for cargo.")
      }
  }

  func printCargo() {
      print("Current cargo count: \(currentCargoCount)")
  }
}

// PirateShip Subclass

class PirateShip: Ship {
  let maxTreasureCapacity: Int
  var currentTreasureCount: Int = 100
  let numberOfCannons: Int

  init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int) {
      self.maxTreasureCapacity = maxTreasureCapacity
      self.numberOfCannons = 10
      super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
  }

  func addTreasure() {
      if currentTreasureCount < maxTreasureCapacity {
          currentTreasureCount += 24
          print("Treasure added. Current treasure count: \(currentTreasureCount)")
      } else {
          print("No more room for treasure.")
      }
  }

  func printTreasureCount() {
      print("Current treasure count: \(currentTreasureCount)")
  }
}

// CruiseShip
let ship1 = CruiseShip(name: "Caribbea Sun", year: 2024, countryOfOrigin: "Trinidad And Tobago", maxCapacity: 2000, oceanOfOperation: "Atlantic Ocean")

print("Ship Name: \(ship1.name)")
print("Year: \(ship1.year)")
print("Country of Origin: \(ship1.countryOfOrigin)")
print("Max Capacity: \(ship1.maxCapacity)")
print("Ocean of Operation: \(ship1.oceanOfOperation)")

ship1.addPassenger()
ship1.addPassenger()
ship1.printPassengerCount()

// CargoShip
let ship2 = CargoShip(name: "The Gladiator", year: 2023, countryOfOrigin: "Rome", maxCargoCapacity: 5000, isInternational: false)

print("Ship Name: \(ship2.name)")
print("Year: \(ship2.year)")
print("Country of Origin: \(ship2.countryOfOrigin)")
print("Max Cargo Capacity: \(ship2.maxCargoCapacity)")
print("Is International: \(ship2.isInternational)")

ship2.addCargo()
ship2.addCargo()
ship2.printCargo()


// PirateShip
let ship3 = PirateShip(name: "Black Pearl", year: 2003, countryOfOrigin: "Hati", maxTreasureCapacity: 1000)

print("Ship Name: \(ship3.name)")
print("Year: \(ship3.year)")
print("Country of Origin: \(ship3.countryOfOrigin)")
print("Max Treasure Capacity: \(ship3.maxTreasureCapacity)")
print("Number of Cannons: \(ship3.numberOfCannons)")

ship3.addTreasure()
ship3.addTreasure()
ship3.printTreasureCount
