import Foundation

// SE4041 – Practical 02
// Exercise 02 – Sets

// Step 1 – Create a set
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)   // order may vary

// Step 2 – Insert values
towns.insert("Jaffna")
towns.insert("Kandy")   // duplicate ignored
print(towns)
print(towns.count)      // 4

// Step 3 – Check membership
print(towns.contains("Kandy"))     // true
print(towns.contains("Colombo"))   // false

// Step 4 – Remove an item
towns.remove("Galle")
print(towns)

// Step 5 – Set operations
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())
print(swiftClass.intersection(kotlinClass).sorted())
print(swiftClass.subtracting(kotlinClass).sorted())
print(swiftClass.symmetricDifference(kotlinClass).sorted())

// Activity 2
let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Kasun"]
let gameTechnologyStudents: Set = ["Nimali", "Ruwan", "Sanduni", "Dilan"]

print("All students: \(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())")
print("Taking both modules: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())")
print("Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())")
print("Only one of the modules: \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())")
