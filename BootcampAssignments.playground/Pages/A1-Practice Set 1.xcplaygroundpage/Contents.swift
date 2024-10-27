import UIKit

//MARK: Practice Set-1

// Q1
// Declare a constant exercises with value 11 and a variable exercisesSolved with value 0. Increment this variable every time you solve an exercise (including this one)

let exercises = 11
var exercicesSolved = 0
exercicesSolved += 1

// Q2
// Given the following code: age = 16 print(age) age = 30 print( age) Declare age so that it compiles. Did you use var or let?
var age = 16
print(age)
age = 30
print(age)

exercicesSolved += 1

// Q3
// 3. Consider the following code: let b: Int = 10 let a: Int = 46 Work out what answer equals when you replace the final line of code above with each of these options: 
let a: Int = 46
let b: Int = 10

let answer1: Int = (a * 100) + b
let answer2: Int = (a * 100) + (b * 100)
let answer3: Int = (a * 100) + (b / 10)
print(answer1)
print(answer2)
print(answer3)
exercicesSolved += 1

// Q4
// 4. Add parentheses to the following calculation . The parentheses should show the order in which the operations are performed and should not alter the result of the calculation.  5 * 3 - 4 / 2 * 2
let result = (5 * 3) - (4 / (2 * 2))
print(result)
exercicesSolved += 1

// Q5
// 5. Declare two constants a and b of type Double and assign both a value. Calculate the average of a and b and store the result in a constant named average.
let a1: Double = 33.4
let b1: Double = 21.3
let average = (a1 + b1) / 2
exercicesSolved += 1

// Q6
// 6. °C olarak ifade edilen bir sıcaklık, 1,8 ile çarpılıp ardından 32 artırılarak °F'ye dönüştürülebilir. Bu meydan okumada, tersini yapın: °F'den °C'ye bir sıcaklığı dönüştürün. Double türünde fahrenheit adlı bir sabit bildirin ve buna bir değer atayın. Karşılık gelen sıcaklığı °C olarak hesaplayın ve sonucu celsius adlı bir sabitte saklayın.
let fahrenheit: Double = 105.2
let celcius: Double
celcius = ((fahrenheit - 32) * 5) / 9
exercicesSolved += 1

// Q7
// 7. Suppose the squares on a chessboard are numbered left to right, top to bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top to bottom, 0 to 7. Columns are numbered left to right, 0 to 7. Declare a constant position and assign it a value between 0 and 63. Calculate the corresponding row and column numbers and store the results in constants named row and column.
let position: Int = 42
let row: Int = position / 8
let column: Int = position % 8

print("Position: \(position), Row: \(row), Column: \(column)")
exercicesSolved += 1

// Q8
// Declare constants named dividend and divisor of type Double and assign both a value. Calculate the quotient and remainder of an integer division of dividend by divisor and store the results in constants named quotient and remainder. Calculate the remainder without using the operator %.
let dividend: Double = 10.5
let divisor: Double = 3.0

let quotient: Double = Double(Int(dividend / divisor))
let remainder: Double = dividend - (quotient * divisor)

print("Dividend: \(dividend)")
print("Divisor: \(divisor)")
print("Quotient: \(quotient)")
print("Remainder: \(remainder)")
exercicesSolved += 1

// Q9
// A circle is made up of 2π radians, corresponding with 360 degrees. Declare a constant degrees of type Double and assign it an initial value. Calculate the corresponding angle in radians and store the result in a constant named radians.
let degrees: Double = 45.0
let radians: Double = degrees * Double.pi / 180
print("\(degrees) degrees is equal to \(radians) radians.")
exercicesSolved += 1

// Q10
// Declare four constants named x1, y1, x2 and y2 of type Double. These constants represent the 2-dimensional coordinates of two points. Calculate the distance between these two points and store the result in a constant named distance.
let x1: Double = 3.0
let y1: Double = 4.0
let x2: Double = 7.0
let y2: Double = 1.0

let distance: Double = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))
print("The distance between the points is \(distance)")
exercicesSolved += 1

// Q11
// Increment variable exercisesSolved a final time. Use the print function to print the percentage of exercises you managed to solve. The printed result should be a number between 0 and 1.
var exercisesSolved: Int = 0
let totalExercises: Int = 11
exercisesSolved += 1
let percentageSolved: Double = Double(exercisesSolved) / Double(totalExercises)
print("You solved \(percentageSolved) of the exercises.")

// NOTICE
// Today October 18
// I completed Practice 1 but I couldn't find time for the other practice. I was a bit busy this week and had to take care of my child. I will complete the rest and add it after the lesson.
