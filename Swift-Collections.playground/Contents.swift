//: Playground - noun: a place where people can play

import UIKit

// explicitly create an empty array of Strings
var names: Array<String> = [String]()

var ratings = [Int]()
ratings.append(1)
ratings.append(2)

var os = ["iOS", "MacOS", "watchOS", "tvOS"]

// create an array with a size and default value of 0 for each entry
var counters = [Int](count: 10, repeatedValue: 0)


// adding two String arrays together
let boys = ["Jack", "Sam"]
let girls = ["Jill", "Sue"]
var boys_and_girls = boys + girls


// determine if an array has any values
var scores = [10.0, 8.9, 7.6]
if scores.isEmpty{
    print("scores is empty")
}
else{
    print("scores has \(scores.count) values")
}

// append using append(_:) or +=
var car_brands = ["BMW"]
car_brands.append("VW")
car_brands += ["Toyota"]

// inserting a value
car_brands.insert("Nissan", atIndex: 1)


// get the value at an index
let car = car_brands[1]
car_brands[1] = "Acura"
car_brands


var mycars = car_brands[0...2]
mycars = ["BMW", "Nissan","VW"]


mycars.removeAtIndex(0)
mycars


// iterating over an array
for item in car_brands{
    print(item)
}




// iterating over an array with enumerate()
for (index, item) in car_brands.enumerate(){
    print("Item \(index) \(item)")
}




// create an empty Set
var people =  Set<String>()
// create a Set with an array literal
var people2: Set<String> = ["David", "Rob", "Lee"]



// short-hand syntax
// the Set keyword is required
var people3: Set = ["David", "Rob", "Lee"]



// create a Set with an array literal
var people4: Set<String> = ["David", "Rob", "Lee"]
if people4.isEmpty {
    people4.insert("Roger")
}
else {
    if people4.contains("David"){
        people4.remove("David")
    }
}
print("There are \(people4.count) in the Set")
people4




// iterating over a set
for person in people4{
    print(person)
}

// prints each element, but the order is gauranteed to be the
// same order that you added the items
// iterating over a sorted set
print("printing sorted set")
for person in people4.sort() {
    print(person)
}