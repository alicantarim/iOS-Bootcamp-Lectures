import Foundation

//MARK: Q1-


/*
 Difference Between stride(from:to:by:) and stride(from:through:by:)
 The two stride function overloads allow for more flexibility in loops. Here’s the difference:

 stride(from:to:by:): Loops up to (but does not include) the endpoint. This is useful when you need to stop right before reaching a certain value.

 Example: stride(from: 10, to: 22, by: 4) counts 10, 14, 18 and stops before reaching 22.
 stride(from:through:by:): Loops up to and includes the endpoint. This is useful when you want the loop to reach a specified endpoint exactly.

 Example: stride(from: 10, through: 22, by: 4) counts 10, 14, 18, and 22.
 */

for value in stride(from: 10.0, through: 9.0, by: -0.1) {
    print(String(format: "%.1f", value))
}

//MARK: Q2-







// NOTICE
// Today October 25
// I completed Practice 1 but I couldn't find time for the other practice. I was a bit busy this week and had to take care of my child. I will complete the rest and add it after the lesson.
