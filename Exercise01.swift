// SE4041 – Practical 02
// Exercise 01 – Arrays

// Step 1 – Create an array
var marks = [72, 65, 48, 90, 55]
print(marks)

// Step 2 – Access elements (index starts at 0)
print(marks[0])   // 72
print(marks[2])   // 48
print(marks[4])   // 55
// print(marks[10])   // Would crash: index out of range

// Step 3 – Useful properties
print(marks.count)
print(marks.isEmpty)
print(marks.first as Any)   // first/last are optionals
print(marks.last as Any)

// Step 4 – Modify the array
marks[2] = 52
print(marks)

marks.append(88)
marks.insert(60, at: 1)
print(marks)

marks.removeLast()
marks.remove(at: 1)
print(marks)

// Step 5 – Useful methods
do {
    let marks = [72, 65, 48, 90, 55]

    print(marks.max()!)
    print(marks.min()!)
    print(marks.contains(90))
    print(marks.sorted())
    print(marks.sorted(by: >))

    let total = marks.reduce(0, +)
    print(total)

    let average = Double(total) / Double(marks.count)
    print(average)
}

// Activity 1
var modules = ["SE4041", "SE4010", "IT4020", "IT4030", "IT4040"]

print(modules)
print("First module: \(modules.first ?? "None")")
print("Last module: \(modules.last ?? "None")")

modules.append("IT4050")
print("Number of modules: \(modules.count)")
print("Contains SE4041: \(modules.contains("SE4041"))")
