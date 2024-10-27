import Foundation
import UIKit

//MARK: - OPTIONALS

// Optional Declaration
var cnic: Int? = nil  // no value

cnic = 1000 // value exist

// If value doesn't exist:
// let myFavoriteSong: String? = nil

let myFavoriteSong: String? = "Dil Dil Pakistan"
let parsedInt = Int("10")

print(myFavoriteSong)
print(parsedInt)

// in order to use optionals, we have to unwrap it
// 1. Force Unwrapping
// 2. Optional Binding
// 3. Guard Statements
// 4. Nil Coalescing

//MARK: 1. Force Unwrapp  --- BAD
let a: Double? = 10
let b: Double? = 20
// we are force unwrapping a! and b!
// Force unwrapping is discouraged because in the case of nil of an optional, the application crashes

// Safety way to unwrap an optional when the value of an optional is nil
if a != nil && b != nil {
    let sum = a! + b!
    print(sum)
} else {
    print("Either a or b is nil, or both can be nil!")
}

//MARK: 2. Optional Binding - if let newValue = optional { }

let myFavorite: String? = "Kuzu Kuzu"

if let song = myFavorite {
    print(song)
} else {
    print("No Favorite Song")
}

let a1: Int? = 10
let b1: Int? = 20

if let num1 = a1, let num2 = b1 {
    print("The sum of \(num1) and \(num2) is: \(num1 + num2)")
} else {
    print("Either a or b is nil ")
}

let authorName: String? = "Ray winderlich"
let authorAge: Int? = 17

if let name = authorAge, let age = authorAge, age >= 13 && age <= 19 {
    print("Author: \(name), Age: \(age). He's a teenager")
} else {
    print("He's not a teenager or either age or name is nil or both could be nil.")
}

//MARK: Optional Mini Exercise
// base: Double?, height: Double?

// Area of triangle: 0.5 * height * base
// 1. Calculate area using optional binding
// 2. Calculate area using force unwrapping

// OUTPUT: The area of base: 13, and height: 14 is 0.5 * 14

var base: Double? = 13
var height: Double? = 14

// 1. Calculate area using optional binding
if let baseValue = base, let heightValue = height {
    let area = 0.5 * baseValue * heightValue
    print("Using optional binding: The area of base: \(baseValue), and height: \(heightValue) is \(area)")
} else {
    print("Using optional binding: Either base or height is nil.")
}

// 2. Calculate area using force unwrapping
if base != nil && height != nil {
    let area = 0.5 * base! * height!
    print("Using force unwrapping: The area of base: \(base!), and height: \(height!) is \(area)")
} else {
    print("Using force unwrapping: Either base or height is nil.")
}

//MARK: 3. Guard Statements
// guard let newVar = optional else { (FALSE CASE) return }

func calculateNumberOfSides(shape: String) -> Int? {
    switch shape {
    case "Triangle":
        return 3
    case "Square":
        return 4
    case "Rectangle":
        return 4
    case "Pentagon":
        return 5
    case "Hexagon":
        return 6
    default:
        return nil
    }
}

func maybePrintSides(shape: String) {
    // optional binding
    let sides = calculateNumberOfSides(shape: shape)
    
    if let sides = sides {
        print("A \(shape) has \(sides) sides.")
    } else {
        print("I don't know the number of sides for \(shape)")
    }
}

maybePrintSides(shape: "Pentagon")


func printMyName(name: String?, age: Int?) {
    
    guard let name = name, let age = age, age >= 13 && age <= 33 else {
        print("I don't have a name")
        return
    }
    print("My name is: \(name), age: \(age) and I'm teenager.")
}

printMyName(name: nil, age: nil)  // OUTPUT: I'dont have a name
printMyName(name: "Alican Tarım", age: 32) // OUTPUT: My name is Alican Tarım


//MARK: 4. Nil Coalescing
//Provide a default value in case of nil

// It'S a shorthand version of optionals
var optional: Int? = 10
var mustHaveResult: Int

if let unwrapped = optional {
    mustHaveResult = unwrapped
} else {
    mustHaveResult = 0
}

print(mustHaveResult)


let myFavoriteSong1: String? = "Dil dil Pakistan"


// Nil Coalescing
let song = myFavoriteSong ?? "No Song"

print(song)


//MARK: Optional Mini Exercise
// 1- A optional 3, b optional 4, sum calculate using nil colesing
//Note: Give zero as a default value for a and b

var a2: Int? = 3
var b2: Int? = 4

let sum2 = (a2 ?? 0) + (b2 ?? 0)

print("The sum of a: \(a2 ?? 0) and b: \(b2 ?? 0) is \(sum2)")



// 2- Guard Statement: calculateSum(a: Int?, b: Int?) {} using guard statement

func calculateSum(a: Int?, b: Int?) {
    
    guard let aValue = a, let bValue = b else {
        print("It's something wrong.")
        return
    }
    
    let sum = aValue + bValue
    print("The sum of a: \(aValue) and b: \(bValue) is \(sum).")
}

calculateSum(a: 5, b: 6)
calculateSum(a: nil, b: 6)
calculateSum(a: 5, b: nil)
calculateSum(a: nil, b: nil)




func multiplyFunction(x: Int, y: Int) -> Int {
    return x * y
}

//MARK: - CLOSURE

// declaration of closure
var multiplyClosure = { (x: Int, y: Int) -> Int in
    return x * y
}

// Shorthand Syntax - Type 1
multiplyClosure = { (a, b) in
    a * b
}

let result = multiplyClosure(4, 5)
print(result)

// Shorthand Syntax - Type 2
multiplyClosure = {
    $0 * $1
}

print(multiplyFunction(x: 7, y: 9))


let addClosure = { (a: Int, b: Int) in
    return a + b
}
    
func operateOnNumber(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
        
    print(result)
        
    return result
}

let answer = operateOnNumber(6, 9, operation: addClosure)

print(answer)
    
// Higher Order Functions
    
let prices: [Double] = [7, 8, 9, 10 ,11]
    
// 10% discount
// prices * 90%
// 0.90
    
var array: [Double] = []
    
for price in prices {
    let discountedPrices = price * 0.90
    array.append(discountedPrices)
}
    
print(array)


// Higher Order Functions - Transformation - Map
    
// Map is used to transform your array/ dictionary
let discountedPrices = prices.map { $0 * 0.90 }
let pricesDoubled = prices.map { $0 * 2 }
print(discountedPrices)
print(pricesDoubled)


let prices2: [Double] = [2, 3, 4, 9, 10, 11, 4, 5]

// large prices > 5 --

// 9, 10, 11


let pricesGreaterThanFive = prices2.filter { $0 > 5 }
print(pricesGreaterThanFive)


// Higher Order Functions -Reduce

let names: [String] = ["Alican Tarim", "Osama Hanif", "Talal Ahmed", "Mirza Farhan", "Ahmed Hassan"]
let concatenatedNames = names.reduce("") { $0 + " " + $1 }

print(concatenatedNames)


let number1: [Int] = [5, 6, 7, 11, 18, 29]
let sum = number1.reduce(0) { $0 + $1}

print(sum)


// Dictionaruies (key / values)

// itemPrices: Quantity
// 29: 5
// 30: 6
// 40: 7
// 50.6: 10

// Total prices = 29 * 5 + 30 * 6 + 40 * 7 + 5*.6 * 10
// How can I do it? Logic
// Filter, Map, Reduce

// [key: value]
let stockPrices: [Double : Int] = [29: 5, 30: 6, 40: 7, 50.6: 10]

let totalPrice = stockPrices.reduce(0) { $0 + $1.key * Double($1.value) }

print(totalPrice)


let numbers5 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Even Numbers

// Map, Reduce, Filter

// filter { CONDITION }
// reduce - it returns a single
// map - it transforms your data structure (array/dictionary/sets)
let evenNumbers = numbers5.filter { $0 % 2 == 0 }
print(evenNumbers)


//MARK: Optional Mini Exercise

/* Q1. Create a constant array called names that contains some names as strings. Any
names will do – make sure there's more than three. Now use reduce to create a
string that is the concatenation of each name in the array.
*/

// Constant array of names
let names3 = ["Alice", "Bob", "Charlie", "Diana"]

// Use reduce to concatenate all names
let concatenatedNames1 = names3.reduce("") { result, name in
    result + name
}

let concatenatedNamesWithSpaces = names3.reduce("") { result, name in
    result.isEmpty ? name : result + " " + name
}

print("Concatenated names: \(concatenatedNames1)")
print("Concatenated names with spaces: \(concatenatedNamesWithSpaces)")


//OR

let names10 = ["Osama" , "Ali" , "Hamza" , "Umer"]

let concatName = names10.reduce(""){ $0 + " " + $1 }

print("names are \(concatName)")


/* Q2. Using the same names array, first filter the array to contain only names that are
 longer than four characters, and then create the same concatenation of names as
 in the above exercise. (Hint: You can chain these operations together.)
*/

// Constant array of names
let names6 = ["Alice", "Bob", "Charlie", "Diana", "Eve"]

// Chain filter and reduce operations
let concatenatedFilteredNames = names6
    .filter { $0.count > 4 } // Filter names longer than 4 characters
    .reduce("") { $0 + " " + $1 }

print("Concatenated names (longer than 4 characters): \(concatenatedFilteredNames)")


/* Q3.
 Create a constant dictionary called namesAndAges that contains some names as
 strings mapped to ages as integers. Now use filter to create a dictionary
 containing only people under the age of 18.
 */

// Constant dictionary of names and ages
let namesAndAges = ["Alice": 25, "Bob": 16, "Charlie": 12, "Diana": 28, "Eve": 17]

// Use filter to create a new dictionary with only ages under 18
let filteredNamesAndAges = namesAndAges.filter { $0.value < 18 }

print("Filtered names and ages (under 18): \(filteredNamesAndAges)")


/* Q4. Using the same namesAndAges dictionary, filter out the adults (those 18 or older)
 and then use map to convert to an array containing just the names (i.e. drop the
 ages).
 */

// Constant dictionary of names and ages
let namesAndAges2 = ["Alice": 25, "Bob": 16, "Charlie": 12, "Diana": 28, "Eve": 17]

// Filter out adults (ages 18 or older) and then map to an array of names
let namesOfMinors = namesAndAges2
    .filter { $0.value > 18 } // Keep only those older 18
    .map { $0.key }           // Map to just the names

print("Names of minors (under 18): \(namesOfMinors)")


// OR

let nameAndAges3 = ["Osama":26, "Ali":20 , "Hamza":19 , "Farhan":8]

let adultPersons = nameAndAges3.filter{ $0.value > 18 }.map{ $0.key }

print("adult person " , adultPersons)
