import Foundation

//MARK: - CHALLENGE-1
/*
 Challenge 1: Repeating yourself
 Your first challenge is to write a function that will run a given closure a given number of times.

 Declare the function like so:
 func repeatTask(times: Int, task: () -> Void)

 The function should run the task closure, times number of times. Use this function to print "Swift Apprentice is a great book!" 10 times.

 */

// ANSWER ---------

func repeatTask(times: Int, task: () -> Void) {
    for i in 1...times {
        task()
    }
}

repeatTask(times: 10) {
    print("Swift Apprentice is a great book!")
}

//MARK: - CHALLENGE-2
/*
 Challenge 2: Closure sums
 
 In this challenge, you’re going to write a function that you can reuse to create different mathematical sums.

 Declare the function like so:
 func mathSum(length: Int, series: (Int) -> Int) -> Int

 The first parameter, length, defines the number of values to sum. The second parameter, series, is a closure that can be used to generate a series of values. series should have a parameter that is the position of the value in the series and return the value at that position.

 mathSum should calculate length number of values, starting at position 1, and return their sum.

 Use the function to find the sum of the first 10 square numbers, which equals 385. Then use the function to find the sum of the first 10 Fibonacci numbers, which equals 143. For the Fibonacci numbers, you can use the function you wrote in the functions chapter — or grab it from the solutions if you’re unsure your solution is correct.
 */

// ANSWER ---------

func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var total = 0
    
    // İlk değerler 1'den başlar, length kadar döngü yapar
    for i in 1...length {
        total += series(i) // Her bir index için series fonksiyonunu çağır
    }
    
    return total // Toplamı döndür
}

// Sum of first 10 square numbers.
// Turkish: İlk 10 kare sayısının toplamı)
let squareSum = mathSum(length: 10) { index in
    return index * index // Kare hesabı
}

print("Sum of first 10 square numbers: \(squareSum)")


// Sum of first 10 Fibonacci numbers
let fibonacciSum = mathSum(length: 10) { index in
    if index == 1 {
        return 0 // Fibonacci 1. terim
    } else if index == 2 {
        return 1 // Fibonacci 2. terim
    } else {
        var a = 0
        var b = 1
        var fib = 0
        
        for _ in 3...index {
            fib = a + b // Fibonacci kuralı
            a = b
            b = fib
        }
        
        return fib // Hesaplanan Fibonacci terimini döndür
    }
}

print("Sum of first 10 Fibonacci numbers: \(fibonacciSum)")


//MARK: - CHALLENGE-3

/*
 In this final challenge, you will have a list of app names with associated ratings
 they've been given. Note — these are all fictional apps! Create the data dictionary
 like so:
 
 First, create a dictionary called averageRatings that will contain a mapping of app
 names to average ratings. Use forEach to iterate through the appRatings dictionary,
 then use reduce to calculate the average rating. Store this rating in the
 averageRatings dictionary. Finally, use filter and map chained together to get a
 list of the app names whose average rating is greater than 3.
 
 
 */

// ANSWER ---------

let appRatings: [String: [Int]] = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

var averageRatings: [String: Double] = [:]

appRatings.forEach { (app, ratings) in
    let total = ratings.reduce(0, +)
    let average = Double(total) / Double(ratings.count)
    averageRatings[app] = average
}

let highRatedApps = averageRatings.filter { $0.value > 3 }.map { $0.key }

print(highRatedApps) // Ortalaması 3'ten büyük olan uygulamaları yazdırır


//MARK: -- 2. ____
/*
1. Create a constant array called names that contains some names as strings. Any
names will do – make sure there's more than three. Now use reduce to create a
string that is the concatenation of each name in the array.
2. Using the same names array, first filter the array to contain only names that are
longer than four characters, and then create the same concatenation of names as
in the above exercise. (Hint: You can chain these operations together.)
3. Create a constant dictionary called namesAndAges that contains some names as
strings mapped to ages as integers. Now use filter to create a dictionary
containing only people under the age of 18.
4. Using the same namesAndAges dictionary, filter out the adults (those 18 or older)
and then use map to convert to an array containing just the names (i.e. drop the
ages).
*/

// QUESTION 1

// Sabit dizi oluşturuyoruz
let names = ["Alice", "Bob", "Charlie", "Diana"] // İsimleri içeren bir dizi

// reduce fonksiyonunu kullanarak isimleri birleştiriyoruz
let concatenatedNames = names.reduce("") { (result, name) in
    return result + name + " " // Her ismin ardına bir boşluk ekliyoruz
}

// Sonucu yazdır.
print(concatenatedNames)


//QUESTION 2

import Foundation // Foundation çerçevesini içe aktar

// Yurakıdaki Array'de sabit değerleri oluşturduk.  let names
// İlk olarak diziyi filtreleyip, daha sonra reduce fonksiyonu ile isimleri birleştiriyoruz
let concatenatedLongNames = names
    .filter { $0.count > 4 } // 4 karakterden uzun olan isimleri filtrele
    .reduce("") { (result, name) in
        return result + name + " " // Her ismin ardına bir boşluk ekle
    }

// Sonucu yazdırıyoruz
print(concatenatedLongNames) // "Alice Charlie Diana "

// QUESTION 3

// Sabit sözlük oluşturur
let namesAndAges: [String: Int] = [
    "Alice": 17,
    "Bob": 20,
    "Charlie": 15,
    "Diana": 19
]

// Yaşı 18'den küçük olanları filtreleyerek yeni bir sözlük oluşturur.
let minors = namesAndAges.filter { $0.value < 18 } // Yaşların 18'den küçük olma koşulu

// Sonucu yazdır
print(minors) // ["Alice": 17, "Charlie": 15]


// QUESTION 4

// Sabit sözlük oluşturuyoruz
let namesAndAges2: [String: Int] = [
    "Alice": 17,
    "Bob": 20,
    "Charlie": 15,
    "Diana": 19
]

// Yaşı 18 veya daha büyük olanları filtreliyoruz
let adults = namesAndAges2.filter { $0.value >= 18 } // Yaşların 18 veya daha büyük olma koşulu

// Filtrelenmiş sözlükteki isimleri almak için map fonksiyonunu kullan
let adultNames = adults.map { $0.key } // Sadece isimleri (anahtarları) alıyoruz

print(adultNames) // ["Bob"]
