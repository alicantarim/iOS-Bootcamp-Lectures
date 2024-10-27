import Foundation

// Challenges.

//MARK: Q1 - In the following for loop:
// What will be the value of sum, and how many iterations will happen?

var sum = 0
for i in 0...5 {
sum += i
}

// Answer:
// Number of Iterations: Since we have 6 numbers (0 through 5), the loop will iterate 6 times.
// After the loop completes, the final value of sum will be 15

//MARK: Q2 - In the while loop below:

var aLotofAs = ""
while aLotofAs.count < 10 {
aLotofAs += "a"
}

print(aLotofAs)
// Answer:
// The string aLotofAs will contain exactly 10 instances of the character "a".


//MARK: Q3 - What will this code print when coordinates is each of the following?

switch coordinates {
case let (x, y, z) where x == y && y == z:
    print("x = y = z")
case (_, _, 0):
    print("On the x/y plane")
case (_, 0, _):
    print("On the x/z plane")
case (0, _, _):
    print("On the y/z plane")
default:
    print("Nothing special")
}

let coordinates = (1, 5, 0)  // On the x/y plane
let coordinates = (2, 2, 2)  // x = y = z
let coordinates = (3, 0, 1)  // On the x/z plane
let coordinates = (3, 2, 5)  // Nothing special
let coordinates = (0, 2, 4)  // On the y/z plane

//MARK: Q4- A closed range can never be empty. Why?

// Answer:
/*
 A closed range in Swift, written as a...b, includes both the start and end values (a and b), making it impossible for the range to be empty. This is because a closed range assumes that if a is equal to or less than b, then there is at least one element in the range, specifically the value a (or b, if a == b).

 For example:
 In 1...5, the closed range includes 1, 2, 3, 4, 5.
 In 5...5, the closed range includes only 5.
 But 5...1 is invalid, as a closed range in Swift requires the start to be less than or equal to the end.
 Swift ensures closed ranges cannot be empty by enforcing the rule that the starting point must be less than or equal to the endpoint. If this condition isn’t met, the range cannot be created in the first place, preventing the possibility of an empty closed range.
 */

//MARK: Q5- Print a countdown from 10 to 0. (Note: do not use the reversed() method, which will be introduced later.)

// Answer:
for i in stride(from: 10, through: 0, by: -1) {
    print(i)
}

//MARK: Q6- Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0. (Note: do not use the stride(from:by:to:) function, which will be introduced later.)

// Answer:
var number = 0.0
for _ in 0...10 {
    print(String(format: "%.1f", number))
    number += 0.1
}
