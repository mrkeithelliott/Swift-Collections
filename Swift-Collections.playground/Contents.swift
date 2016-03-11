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



//Initialize empty Sets to hold Int values
var set_a: Set<Int> = []
var set_b: Set<Int> = []

//Populate Set A with Int values
for cnt in 0..<10{
    set_a.insert(cnt)
}

//notice that the values are not stored
// in any particular order


// Populate Set B with Int values
for cnt in 5...9{
    set_b.insert(cnt)
}

set_a
set_b

// Find the values that are in both Set A 
//and Set B
set_a.intersect(set_b)



set_a.removeAll()
for cnt in 1...5{
    set_a.insert(cnt)
}

set_b.removeAll()
for cnt in 7...9{
    set_b.insert(cnt)
}
set_a
set_b

set_a.union(set_b)


set_a.removeAll()
for cnt in 0...10{
    set_a.insert(cnt)
}

set_b.removeAll()
for cnt in 2...8{
    set_b.insert(cnt)
}

set_a
set_b
set_a.exclusiveOr(set_b)


set_a.removeAll()
for cnt in 0...10{
    set_a.insert(cnt)
}

set_b.removeAll()
for cnt in 3...10{
    set_b.insert(cnt)
}

set_a
set_b

set_a.subtract(set_b)



set_a.removeAll()
for cnt in 0...5{
    set_a.insert(cnt)
}

set_b.removeAll()
for cnt in 1...3{
    set_b.insert(cnt)
}

set_a
set_b

set_a.isSubsetOf(set_b)
set_a.isSupersetOf(set_b)

set_a.isStrictSubsetOf(set_b)
set_a.isStrictSupersetOf(set_b)



set_a.removeAll()
for cnt in 0...3{
    set_a.insert(cnt)
}

set_a
set_b

set_a == set_b

set_a.remove(0)

set_a
set_b

set_a == set_b

set_a.isSubsetOf(set_b)
set_a.isSupersetOf(set_b)
set_a.isStrictSubsetOf(set_b)
set_a.isStrictSupersetOf(set_b)

set_a.insert(0)
set_a.isSubsetOf(set_b)
set_a.isSupersetOf(set_b)
set_a.isStrictSubsetOf(set_b)
set_a.isStrictSupersetOf(set_b)


set_a.removeAll()
for cnt in 0...5{
    set_a.insert(cnt)
}

set_b.removeAll()
for cnt in 1...3{
    set_b.insert(cnt)
}

set_a
set_b
// False because the sets contain common
// values
set_a.isDisjointWith(set_b)

set_a.removeAll()
for cnt in 4...7{
    set_a.insert(cnt)
}

set_a
set_b
//True becuase the Sets don't contain
// any common values
set_a.isDisjointWith(set_b)



// Create an empty Dictionary
var myDict = [String: Int]()

// create a dictionary using a Dictionary literal
var mySecondDict = ["Color": "Red", "Doors": 2]

// subscripting to update values
myDict["Articles"] = 5
myDict["Comments"] = 100
myDict

let oldValue = myDict.updateValue(6, forKey: "Articles")
oldValue
let prevAuthor = myDict.updateValue(2, forKey: "Authors")
prevAuthor
myDict


myDict
// remove the Authors key value pair
myDict["Authors"] = nil
// remove the Comments key value pair
let removedValue = myDict.removeValueForKey("Comments")
removedValue
myDict


var scoresDict = ["Jack": 8.0, "Jim": 6.7, "Roger": 7.2, "Dan": 5.9]
var scoreslist: [Double] = []
var players: [String] = []
for (player, score) in scoresDict{
    scoreslist.append(score)
    players.append(player)
}

scoreslist
players

