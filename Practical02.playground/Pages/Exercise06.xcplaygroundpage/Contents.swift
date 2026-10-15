import Foundation

// SE4041 – Practical 02
// Exercise 06 – Loops

// Part A – for-in
for i in 1...5 {
    print("Week \(i)")
}

let names = ["Amal", "Nimali", "Ruwan"]

for name in names {
    print(name)
}

for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// Part B – while
var balance = 1000
var week = 0

while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)")

// Part C – repeat-while
var attempts = 0

repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// break and continue
do {
    let marks = [72, -1, 65, 48, 90]

    for mark in marks {
        if mark < 0 {
            continue   // skip this repetition
        }
        if mark == 90 {
            break      // stop the loop completely
        }
        print(mark)
    }
}

// Activity 6
do {
    let marks = [72, -1, 55, 43, 90, 88]

    for mark in marks {
        if mark < 0 {
            continue
        }
        if mark == 90 {
            print("Found 90 – stopping")
            break
        }
        print("Processed mark: \(mark)")
    }
}

// Putting collections and control flow together
let studentNames = ["Amal", "Nimali", "Ruwan", "Sanduni"]
let studentMarks = [72, 45, 48, 90]
let passMark = 50
var passedStudents: [String] = []

for (index, mark) in studentMarks.enumerated() {
    if mark >= passMark {
        passedStudents.append(studentNames[index])
        print("\(studentNames[index]): \(mark) - Pass")
    } else {
        print("\(studentNames[index]): \(mark) - Fail")
    }
}
print("Passed Students: \(passedStudents)")

// ---------------------------------------------------------------
// Knowledge Check
// 1. Arrays are ordered and allow duplicates; sets are unordered and unique.
// 2. An array stores each item at its own position, so equal values can sit at different indices.
// 3. A set uses each value's hash as its identity, so equal values are stored only once.
// 4. array[index], starting at 0.
// 5. dictionary[key].
// 6. The key may not exist, so the lookup may have no value.
// 7. ... includes the upper bound; ..< excludes it.
// 8. For simple true/false decisions or a few conditions.
// 9. When one value is matched against many cases or ranges.
// 10. for-in iterates a known collection/range; while repeats while a condition is true.
// 11. while checks first (may run 0 times); repeat-while runs at least once.
// 12. continue skips to the next repetition.
// 13. break stops the loop completely.
