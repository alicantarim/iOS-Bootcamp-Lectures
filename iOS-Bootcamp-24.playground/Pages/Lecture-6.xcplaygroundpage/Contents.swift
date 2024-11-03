import Foundation
import UIKit

// Arrays and Dictionaries - Lecture

print("iOS DEV BOOTCAMP 2024")


// CRUD Operation: Insert, Remove, Update, Delete

var evenNumbers = [2, 4, 6, 9, 10]

evenNumbers = []

print(evenNumbers)

let allZeroes = [Int](repeating: 0, count: 10)

print(allZeroes)

evenNumbers = [2, 4, 6, 9, 10]

print("evenNumbers Count:", evenNumbers.count)

evenNumbers = []
print(evenNumbers.isEmpty) // True

evenNumbers = [2,4,6,9,10]

print(evenNumbers.count)

print(evenNumbers.isEmpty)

print(evenNumbers.min() ?? "")
print(evenNumbers.max() ?? "")


var students = ["Alican", "Osama Hanif", "Mirza Farhan", "Talal Ahned", "Mushahid Khan", "Muhammed Ahmed"]

/*
func isIncluded(student: String) -> Bool {
    return students.contains(student)
}
 
 let result = isIncluded(student: "Alican")
 print(result)  // --> True
*/


// Insert at end
students.append("Usama Talal")
students += ["Zeeshan Afzal"]
print(students)

// Insert anywhere
students.insert("Faraz Uz Zaman", at: 2)

students.removeLast()

print(students)

// remove at anywhere
students.remove(at: 3)
print(students)


students.sort()   // Sorted
print(students)

// HOW TO ITERATE AN ARRAY
for student in students {
    print("Student: \(student)")
}


// FOREACH - CLOSURE
students.forEach { student in
    print("Student: \(student)")
}

// HOW TO ITERATE AN ARRAY using index and value of an array
for (index, student) in students.enumerated() {
    print("Student \(index + 1): \(student)")
}


//MARK: MINI EXERCISE
// Make a function that calculates the sum of an array

// 1. func sumOfAllItems(numbers: [Int]) -> Int
// array 1...10

// 2. func Fabonacci(numbers: [Int] -> Int
// 5 * 4 * 3 * 2 *1


// Question-1 Answer 1

func sumOfAllItems(numbers: [Int]) -> Int {
    return numbers.reduce(0) {
        $0 + $1
    }
}

// Example usage:
let array: [Int] = Array(1...10)
let sum = sumOfAllItems(numbers: array)
print("The sum is \(sum)")


// Question-1 Answer 2
let numbers = [1,2,3,4,5,6,7,9,10]

func sumOfAllItems(num: [Int]) -> Int {
    return num.reduce(0) { $0 + $1 }
}

print("the sum is =  \(sumOfAllItems(num: numbers))")


// Question-2
let numbers1 = [1, 2, 3, 4, 5]

func fabonacciNumbers(num: [Int]) -> Int {
    return num.reduce(1) { $0 * $1 }
}

print("the fabonacci is =  \(fabonacciNumbers(num: numbers1))")

// Dictionary is an unordered collection of pairs of key and values
// your should be unique
// [Key: Value]
// value could be same or unique

// Declaration of a Dictionary
var students2: [Int: String] = [1: "Farhaj", 2: "Izzah", 3: "Osama", 4: "Tahlal", 5: "Talah"]

print(students2)
print(students2.count)
print(students2.isEmpty)
print(students2.keys)
print(students2.values)

// Insertion
students2[6] =  "Hasham"

students2.updateValue("Alican Tarım", forKey: 2)

// removal
students2.removeValue(forKey: 4)
print(students2)

// Insertion
for (studentId, studentName) in students2 {
    print("Student ID: \(studentId) and Student Name: \(studentName)")
}

// forEach
students2.forEach { student in
    print("Student ID: \(student.key) and Student Name: \(student.value)")
}


//MARK: MINI EXERCISES 2

var players: [String : String] = ["name": "Talal Ahmed", "city": "Istanbul", "country": "Turkey", "profession": "Software Engineer", "state": "Ataşehir"]

print(players)

// func printCityAndState(players: [String: String]) {}

// ANSWER
func printCityAndState(players: [String: String]) {
    if let city = players["city"], let state = players["state"] {
        print("City: \(city), State: \(state)")
    } else {
        print("City or State not found.")
    }
}

printCityAndState(players: players)

/*
 Açıklama:
 printCityAndState(players:) fonksiyonu [String: String] türünde bir sözlük alır.
 if let kullanarak "city" ve "state" anahtarlarının sözlükte mevcut olup olmadığını kontrol eder. Eğer her iki anahtar da mevcutsa, onların değerlerini yazdırır.
 Eğer "city" veya "state" anahtarlarından biri eksikse, "City or State not found." mesajını yazdırır.
 Bu kod, players sözlüğündeki "city" ve "state" bilgilerini alıp yazdırmak için etkili bir yöntem sunar.
 */

// Print only keys
for playerInfo in players.keys {
    print(playerInfo)
}

// Print only value
for playerInfo in players.values {
    print(playerInfo)
}
