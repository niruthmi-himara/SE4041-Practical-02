import Foundation

// SE4041 – Practical 02
// Final Practical Task – Student Performance Manager

// Part A – Store student marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

// Part C – Determine grade using switch and ranges
func grade(for mark: Int) -> String {
    switch mark {
    case 80...100: return "A"
    case 75..<80:  return "A-"
    case 70..<75:  return "B+"
    case 65..<70:  return "B"
    case 60..<65:  return "B-"
    case 55..<60:  return "C+"
    case 45..<55:  return "C"
    case 40..<45:  return "C-"
    case 0..<40:   return "F"
    default:       return "Invalid"
    }
}

var passedStudents: [String] = []        // Part D
var gradesAwarded: Set<String> = []      // Part E
var passCount = 0                        // Additional challenge
var failCount = 0

print("==================================")
print("       STUDENT PERFORMANCE")
print("==================================")
print("")

// Part B – Display all students (sorted, because dictionary order is not guaranteed)
for name in studentMarks.keys.sorted() {
    let mark = studentMarks[name] ?? 0
    let studentGrade = grade(for: mark)

    print("\(name) - \(mark) - \(studentGrade)")

    gradesAwarded.insert(studentGrade)

    if mark >= 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }
}

print("")
print("----------------------------------")
print("")
print("Passed Students:")
for name in passedStudents {
    print(name)
}

print("")
print("----------------------------------")
print("")
print("Grades Awarded:")
for g in gradesAwarded.sorted() {
    print(g)
}

// Part F – Average
let allMarks = Array(studentMarks.values)
var total = 0
for mark in allMarks {
    total += mark
}
let average = Double(total) / Double(allMarks.count)

// Part G – Highest and lowest
let highest = allMarks.max() ?? 0
let lowest = allMarks.min() ?? 0

print("")
print("----------------------------------")
print("")
print("Class Average: \(average)")
print("Highest Mark: \(highest)")
print("Lowest Mark: \(lowest)")

// Additional Challenge – Search for a student
print("")
print("----------------------------------")
print("")
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\(searchName)’s mark is \(mark)")
} else {
    print("Student not found")
}

let missingName = "Dilan"
if let mark = studentMarks[missingName] {
    print("\(missingName)’s mark is \(mark)")
} else {
    print("Student not found")
}

// Additional Challenge – Count passes and fails
print("")
print("Passed: \(passCount)")
print("Failed: \(failCount)")
