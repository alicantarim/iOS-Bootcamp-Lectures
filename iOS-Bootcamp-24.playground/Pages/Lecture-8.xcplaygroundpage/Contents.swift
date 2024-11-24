import UIKit
import Foundation

// Stored Property
// Class is a reference type and it requires an initializer
// Struct is a value and it doesn't required any initializer
// Computed Property

//MARK: - STRUCTS
struct Contant {
    var fullName: String //Stored properties
    var emailAddress: String //Stored properties
    
    func printMyContact() {
        print("Full name: \(fullName)")
        print("Email Address: \(emailAddress)")
    }
}

var person = Contant(fullName: "Grace Murray", emailAddress: "grace.murray@gmail.com")

var person2 = person

person2.fullName = "Farhaj"
person.printMyContact()

print(person.fullName)
print(person2.fullName)
print("------")


//MARK: - CLASSES

class Contantt {
    var fullName = "" //Stored properties
    var emailAddress = "" //Stored properties
    
    init(fullName: String, emailAddress: String) {
           self.fullName = fullName
           self.emailAddress = emailAddress
       }
    
    func printMyContact() {
        print("Full name: \(fullName)")
        print("Email Address: \(emailAddress)")
    }
}

var person3 = Contantt(fullName: "Grace Murray", emailAddress: "grace.murray@gmail.com")

var person4 = person3

person4.fullName = "Farhaj"

print(person3.fullName)
print(person4.fullName)
print("------")

struct TV {
    var height: Double //Stored properties
    var width: Double //Stored properties
    
    // Computed Property - Read only computed property
    var diagonal: Int {
        var result = sqrt(height * height + width * width)
        
        let roundedResult = result.rounded()
        
        return Int(roundedResult)
    }
}

var tv = TV(height: 15.4, width: 34.10)

// computed property gets calculated at runtime and it doesn't have any storage untill it gets called
print("The diagonal of tv is: \(tv.diagonal)")
print("------")

struct TVs {
    var height: Double //Stored properties
    var width: Double //Stored properties
    
    // Computed Property - Read and Write computed property (getters + setters)
    var diagonal: Int {
        
        get {
            var result = sqrt(height * height + width * width)
            let roundedResult = result.rounded()
            return Int(roundedResult)
        }
       
        set {
            let ratioWidth = 16.0
            let ratioHeight = 9.0
            
            height = Double(newValue) * ratioHeight / sqrt(ratioHeight * ratioHeight + ratioWidth * ratioWidth)
            //height = Double(newValue)  ratioHieght / sqrt(ratioHieght  ratioHieght + ratioWidth * ratioWidth)
            
            width = height * ratioWidth / ratioWidth
        }
    }
}

var tv1 = TVs(height: 15.4, width: 34.10)


// computed property gets calculated at runtime and it doesn't have any storage untill it gets called
print("The diagonal of tv is: \(tv1.diagonal)")

tv1.diagonal = 10
print("The diagonal of tv is: \(tv1.diagonal)")
print("The height of tv is: \(tv1.height)")
print("The width of tv is: \(tv1.width)")
print("------")


// Property Observers - did Set will Set

// Light Bulb = maxCurrent = 40 ,, if the curren exceeds to 40 fallback to oldValue

struct LightBulb {
    static let maxCurrent = 40
    
    // propert Observer
    var current = 0 {
        didSet {
            if current > LightBulb.maxCurrent {
                print("Current too high, falling back to previous setting.")
                current = oldValue
            }
        }
    }
}

var light = LightBulb()
//did set gets called
light.current = 13
print(light.current)

light.current = 50
print(light.current)
print("141. Lines ------")


// did Set Will Set

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "Short Skirts"
print("165. Lines ------")


// Mini Exercises
// Read and Write Computed Property

// Triangle: base - Double, height - Double, computed property: area: Double ... 0.5 * base * height
// print height base, area of triangle

struct Triangle {
    var base: Double // Taban
    var height: Double // Yükseklik
    
    // Read and write computed
    var area: Double {
        get {
            return 0.5 * base * height
        }
        set {
            base = (newValue / height) * 2
            height = (newValue / base) * 2
        }
    }
}

var myTriangle = Triangle(base: 12.0, height: 6.0)
print("Area of Triangle: \(myTriangle.area)")

myTriangle.area = 100
print("new height: \(myTriangle.height)")
print("new base: \(myTriangle.base)")
print("196. Lines ------")

/*
struct Circle {
    // it gets calculated only a single time
    lazy var pi = {
        return ((4.0  atan(1.0 / 5.0)) - atan(1.0 / 239.0))  4.0
    }()
    
    var radius = 0.0
    
    // mutating is used to make this property to be mutable
    var circumference: Double {
        mutating get {
            return pi * radius
        }
    }
    
    init(radius: Double = 0.0) {
        self.radius = radius
    }
}

var circle = Circle(radius: 5)

print("Value of pie: \(circle.pi)")
print("The area of circumference is: \(circle.circumference)")
circle.radius = 10
print("The area of circumference is: \(circle.circumference)")
*/

// One interface (animal) with many forms (cat, dog, lion)
protocol Animal {
    func speak()
}

class Cat: Animal {
    func speak() {
        print("meow meow")
    }
}

class Dog: Animal {
    func speak() {
        print("Hav hav")
    }
}

class Lion: Animal {
    func speak() {
        print("Roar")
    }
}

let cat = Cat()
let dog = Dog()
let lion = Lion()

cat.speak()
dog.speak()
lion.speak()
print("257. Lines ------")


protocol Vehicle {
    func accelerate()
    func stop()
}

// Confirming to the protocol
class UniCycle: Vehicle {
    
    var peddling = false
    
    func accelerate() {
        print("Unicycle started")
        peddling = true
    }
    
    func stop() {
        print("Unicycle stopped")
        peddling = false
    }
}

let cycle = UniCycle()

cycle.accelerate()
cycle.stop()
print("285. Lines ------")

// a protocol can also be inherited from a protocol
