import Foundation

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
