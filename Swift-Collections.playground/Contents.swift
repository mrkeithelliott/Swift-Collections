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


protocol PersonProtocol : Hashable {
    var first_name: String {get set}
    var last_name: String {get set}
    var email: String {get set}
}

struct Person: PersonProtocol {
    var first_name: String
    var last_name: String
    var email: String
    
    var hashValue: Int {
        get{
            return "\(first_name), \(last_name),\(email)".hashValue
        }
    }
}

func ==(lhs:Person, rhs:Person)->Bool{
    return lhs.hashValue == rhs.hashValue
}

protocol PeopleProtocol: Hashable{
    typealias ItemType
    mutating func add(person: Person)
    mutating func remove(person: Person)->Person?
    func retrieveByFirstName(name: String)->[Person]?
    func retrieveByLastName(name: String)->[Person]?
    func retrieveSharedContacts(contacts: ItemType)->Set<Person>?
    var count: Int { get }
}

struct PeopleCollection: PeopleProtocol{
    var people:Set<Person> = []
    
    mutating func add(person: Person) {
        if !people.contains(person){
            people.insert(person)
        }
    }
    
    mutating func remove(person: Person) -> Person? {
        let removedPerson = people.remove(person)
        return removedPerson
    }
    
    func retrieveByFirstName(name: String) -> [Person]? {
        let foundPeople = people.filter {
            $0.first_name == name
        }
        
        return foundPeople
    }
    
    func retrieveByLastName(name: String) -> [Person]? {
        let foundPeople = people.filter {
            $0.last_name == name
        }
        
        return foundPeople
    }
    
    func retrieveSharedContacts(contacts: PeopleCollection) -> Set<Person>? {
        let common_contacts = self.people.intersect(contacts.people)
        return common_contacts
    }
    
    var count: Int {
        get{
            return people.count
        }
    }
    
    var hashValue: Int {
        get {
            return people.hashValue
        }
    }
}

func ==(lhs: PeopleCollection, rhs: PeopleCollection)->Bool{
    return lhs.people == rhs.people
}


extension Person: CustomStringConvertible{
    var description: String {
        get{
            return "name: \(first_name) \(last_name)  email: \(email)"
        }
    }
}

extension PeopleCollection: CustomStringConvertible{
    var description: String {
        get{
            var _description: String = ""
            for person in self.people{
                 _description += "person: \(person) "
            }
            return _description
        }
    }
}


let jack = Person(first_name: "Jack", last_name: "Jones", email: "jack_white@acme.com")
let lee = Person(first_name: "Lee", last_name: "Black", email: "lb@acme.com")
let roger = Person(first_name: "Roger", last_name: "Bland", email: "rb@xzy.com")
let mary = Person(first_name: "Mary", last_name: "Jones", email: "mw@xyz.com")

var peopleList = PeopleCollection()
peopleList.add(jack)
peopleList.add(lee)
peopleList.add(roger)
peopleList.add(mary)
peopleList.count
peopleList
print(peopleList)


let removeJack = peopleList.remove(jack)
peopleList.add(removeJack!)

let theJones = peopleList.retrieveByLastName("Jones")
theJones?.count

let jack2 = Person(first_name: "Jack", last_name: "Jones", email: "jack_white@acme.com")
let lee2 = Person(first_name: "Lee", last_name: "Black", email: "lb@acme.com")
let robert = Person(first_name: "Robert", last_name: "Bland", email: "rb@xzy.com")
let mickey = Person(first_name: "Mickey", last_name: "Jones", email: "mw@xyz.com")

var contactList = PeopleCollection()
contactList.add(jack2)
contactList.add(lee2)
contactList.add(robert)
contactList.add(mickey)

let common_contacts = peopleList.retrieveSharedContacts(contactList)
common_contacts?.count



