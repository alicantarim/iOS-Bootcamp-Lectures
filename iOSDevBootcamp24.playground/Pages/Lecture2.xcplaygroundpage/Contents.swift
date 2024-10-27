import UIKit
import Foundation

// Associated Values: Enums can have cases of different types by the use of associated value

let count = 100

// State print only event numbers.

// for <CONSTANT> in RANGES where <CONDITION> {}
for i in 1...count {
    
    if i % 2 == 0 {
        print(i)
    }
}

for j in 1...count where j % 2 == 0 {
    print(j)
}

let num: Double = 16.0
print(sqrt(num))


let range = 1...10

for k in range {
    print(k * k)  // Square of each number
    print(sqrt(Double(k)))  // Square root of each number
}

var sum = 0

for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    
    for column in 0..<8 {
        sum += row * column
    }
}


//MARK: - SWITCH CASE

// Associated Values: Enums can have cases of different types by the use of associated value
// We can use where in switch statements as well.

let string = "Dog"

switch string {
case "Dog", "Cat":
    print("Animal is a house pet.")
default:
    print("Animal is not a house pet.")
}

let num1 = 2

if num1 % 2 == 0 {
    print("Number is even")
} else {
    print("Number is odd")
}

switch num {
case let _ where num1 % 2 == 0:
    print("Even")
default:
    print("Odd")
}

// Tuples in Switch Statemens
let coordinates = (x: 3, y: 2, z: 5)

switch coordinates {
case let (x, y, _) where x == y:
    print("Along the y = x line")
case let(x, y, _) where y == x * x:
    print("Along the y = x^2 line")
default:
    break
}

let profileInfo = (name: "Hunain", gpa: 3.7)

switch profileInfo {
case let (name, gpa) where gpa >= 3.5 && gpa <= 4:
    print("Hunaın is a scholarship holder!")
case let (name, gpa) where gpa >= 1 && gpa <= 3:
    print("Hunaın is in probation!")
case let (name, gpa) where gpa >= 2 && gpa <= 3.5:
    print("Hunaın has passed the course")
default:
    break
}

let ages = 5

switch ages {
case ages where ages >= 0 && ages <= 2:
    print("Infant")
case ages where ages >= 3 && ages <= 12:
    print("Child")
case ages where ages >= 13 && ages <= 19:
    print("Teenager")
case ages where ages >= 20 && ages <= 39:
    print("Adult")
case ages where ages >= 40 && ages <= 60:
    print("Middle aged")
case ages where ages < 60:
    print("Elderly")
default:
    print("Invalid Age")
}

let person = (name: "Matt", age: 67)

switch person.age {
case 0...22:
    print("\(person.name) is a infant")
case 3...12:
    print("\(person.name) is a child")
case 13...19:
    print("\(person.name) is an teenager")
case 20...39:
    print("\(person.name) is an adult")
case 40...60:
    print("\(person.name) is an middle aged")
case _ where person.age > 60:
    print("\(person.name) is a senior")
default:
    print("Invalid age")
}

// MARK: - FUNCTION
// with argument but no return type

func printMyName(name: String) {
    print("My name is: \(name)")
}

printMyName(name: "Alican Tarim")
printMyName(name: "Osama Hanif")

// C like calling
func printMyName1(_ name: String) {
    print("My name is: \(name)")
}

printMyName1("Muhammed Usman")

func printMyName2(fullName: String, _ cnic: Int) {
    print("My name is: \(fullName) - CNIC: \(cnic)")
}

printMyName2(fullName: "Muhammed Usman", 89)

// with argument but a return type
// Function Overloading: Function with same name but having different data types, internal/external parameteres, number of parameters, or differen types
func sum1(a: Int, b: Int) -> Int {
    return a + b
}

// with different argument
func sum1(_ a: Int, _ b: Int) -> Int {
    return a + b
}

// number of parameters
func sum1(a: Int, b: Int, c: Int) -> Int {
    print("sum of three with integer varation")
    return a + b + c
}

func sum1(a: Int, b: Int, c: Int) -> Double {
    print("sum of three with double varation")
    return Double(a + b + c)
}

let add = sum1(a: 8, b: 9)
print(add)

let addClikeCalling = sum1(4, 5)
print(addClikeCalling)

let sumThreeNumbers: Int = sum1(a: 4, b: 5, c: 6)


//let sumThreeNumbers: Double = sum1(a: 7, b: 3, c: 5)
//print(sumThreeNumbers)


//Internal and External Parameters

// value: internal (used within a function)
// and: external (used outside the function for calling)
func printMultipleOf(multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(multiplier: 8, and: 90)

// internal parameters: a, b
// external parameters: sumOne, sumTwo
func add(sumOne a: Int, sumTwo b: Int) -> Int {
    return a + b
}

let sum2 = add(sumOne: 8, sumTwo: 8)

// QUIZ
func printFullName1(firtsName1: String, lastName1: String) {
    print("\(firstName1) \(lastName1)")
}
printFullName1(firtsName1: "Alican", lastName1: "Tarım")


func printFullName2(_ firtsName1: String, _ lastName1: String) {
    print("\(firstName1) \(lastName1)")
}
printFullName1("Alican", "Tarım")


func printFullName1(firtsName1: String, lastName1: String) -> String {
    print("\(firstName1) \(lastName1)")
}
let fullNameQ = printFullName1(firtsName1: "Lavinya", lastName1: "Tarım")

func printFullName1(firtsName1: String, lastName1: String) -> (fullName: String, length: Int) {
    let fullName = firstName1 + " " + lastName1
    let sizeOfFullName = fullName.count
    
    return (fullName, sizeOfFullName)
}

let profileInfos = printMyName1(firstName1: "Alican", lastName1: "Tarım")

print(profileInfos)
print("Name is: \(profileInfos.fullName)")
print("Length of fullname is: \(profileInfos.length)")


// square, area, boundary
func areaOfSquareAndTotalLength(side: Double) -> (area: Double, sides: Double) {
    
    let area = side * side
    let totalBoundraySize = side * 4
    
    return(area, totalBoundraySize)
}

let result = areaOfSquareAndTotalLength(side: 5)
let areaOfSquare = result.area
let side = result.sides

print("Area of Square: \(areaOfSquare)")
print("Area of Square: \(side)")


// You have to calculate area of circle = Double.pi * radius * radius
// and circumference = 2 * Double.pi * radius

func calculateAreaOfCircle(radius: Double) -> (areaOfCircle: Double, cicumference: Double) {
    let pi = 3.14
    let area = Double.pi * radius * radius
    let cicumference = 2 * Double.pi * radius
    return(areaOfCircle, cicumference)
}

let result1 = calculateAreaOfCircle(radius: 5)
let areaOfCircle = result1.areaOfCircle
let circumferenceOfCircle = result1.cicumference

print("Area of Circle: \(areaOfCircle)")
print("Circumference: \(circumferenceOfCircle)")


// Function can be used as a variable in Swift

// Case 1: Function can be assigned as a variable in Swift

func add(a: Int, b: Int) -> Int {
    return a + b
}

func sub(a: Int, b: Int) -> Int {
    return a - b
}

var function = add

function = sub

let result = function(4, 5)
print(result)


// Case 2: Function can be passed into another function in swift just like a variable in Swift

func sub1(a: Int, b: Int) -> Int {
    return a - b
}

func mul1(a: Int, b: Int) -> Int {
    return a * b
}

func add1(a: Int, b: Int) -> Int {
    return a + b
}

// (Int, Int) -> Int

func printResult(_ function: (Int, Int) -> Int, a: Int, b: Int) {
    let result = function(a, b)
    print(result)
}

let operation = add
/// passing function into another function

printResult(sub1, a: 10, b: 3)
printResult(mul1, a: 10, b: 3)



