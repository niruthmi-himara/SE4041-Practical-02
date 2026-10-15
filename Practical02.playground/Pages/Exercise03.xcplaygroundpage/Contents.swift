import Foundation

// SE4041 – Practical 02
// Exercise 03 – Dictionaries

// Step 1 – Create a dictionary
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)

// Step 2 – Retrieve a value (returns an optional)
print(marks["Amal"] as Any)   // Optional(72)

// Step 3 – Safely retrieve a value
print(marks["Amal"] ?? 0)    // 72
print(marks["Kasun"] ?? 0)   // 0

// Step 4 – Optional binding
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Step 5 – Add, update and remove
marks["Sanduni"] = 90
marks["Amal"] = 75
marks["Ruwan"] = nil
print(marks)

// Activity 3 – Phone Book
var phoneBook: [String: String] = [
    "Amal": "0771234567",
    "Nimali": "0712345678",
    "Ruwan": "0759876543",
    "Sanduni": "0764567890"
]

phoneBook["Kasun"] = "0701112233"      // 1. add
phoneBook["Amal"] = "0779998888"       // 2. update
phoneBook["Ruwan"] = nil               // 3. remove

func searchContact(_ name: String) {
    if let number = phoneBook[name] {  // 4. search with if let
        print("\(name): \(number)")
    } else {
        print("Contact not found")     // 5. missing key
    }
}

searchContact("Amal")
searchContact("Ruwan")

for name in phoneBook.keys.sorted() {
    print("\(name) -> \(phoneBook[name]!)")
}
