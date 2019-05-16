//: `HOTKEYS`
//Ctrl + Shift + Click = несколько курсоров
//Ctrl + E = переместить курсор в конец строки
//Ctrl + R = run build
//Ctrl + Cmd + E = редактирование имени переменной в скобках
//Cmd + Shift + Arrows = выделить до конца или начала строки
//



//: `FUNCTIONS`

//func calculateFullName(_ firstName: String, _ secondName: String)
//    -> (fullName: String, lengthName: Int) {
//        let fullName = firstName + " " + secondName
//        let lenghtName = firstName.count + secondName.count
//
//        return (fullName, lenghtName)
//}
//
//let fullName = calculateFullName("Danyil", "Zborovskyi")
//let (name, length) = fullName
//name
//length

//: `OPTIONALS`
// Implicit unwrapping______________________________
let someText = "123"
var someInt = Int(someText)
someInt = nil
var someIntUwrapped = someInt ?? 0
print(someIntUwrapped)


// Nil-Coalescing operator__________________________
var someString: String? = "Thor"
someString = nil
let someStringUNwrapped = someString ?? "(optional) someString = nil"
print(someStringUNwrapped)

var catName: String? = "Superman"

// Optional Binding_________________________________
if let catName = catName {
    print(catName)
} else {
    print("catName is optional(nil)")
}


if let name = catName {
    print("My cats name is \(name)")
} else {
    print("No cat")
}

var myNickName: String? = "Flash"

func printNickname(_ nickname: String?) {
    guard let nick = nickname else {
        print("I dont have any nickname:(")
        return
    }
    print("My nickname is \(nick)")
}

printNickname(myNickName)

//: `ARRAYS`

//var food: [String] = ["pasta", "banana"]
//
//food.append("apple")
//food += ["rice"]
//
////food.removeAll()
//food.isEmpty
//food.count
//if let first = food.first {
//    print("The first element of array is \"\(first)\".")
//}
//
//let firstThree = Array(food[1...3])
//firstThree[0]
//
//food.contains("pasta")
//food.insert("potato", at: 0)
//
//food.remove(at: 0)
//food.swapAt(0, 2)
//
//for (i, e) in food.enumerated() {
//    print(i, e)
//}
//
//if let pasta = food.firstIndex(of: "pasta") {
//    print("Index of pasta is \(pasta)")
//} else {
//    print("No pasta")
//}
//
//let playersName = ["Adam", "Dimi", "Mateo", "Alexa"]
//let playersScore = [3, 1, 9, 2]
//
//for (index, name) in playersName.enumerated() {
//    print(name, playersScore[index])
//}

//: `DICTIONARIES`
//
//var emptyDictionary: [String: Int] = [:]
//
//var namesAndPets = [
//    "Ron" : "🐀 Rat",
//    "Rincewind" : "🛄 Luggage",
//    "Thor" : "🔨 Hammer",
//    "Goku" : "✈️ Fly"
//]
//namesAndPets["Ron"]
//let calvinPet = namesAndPets["Calvin"] ?? "No pet"
//namesAndPets["Ron"] = "🦉 Owl"
//namesAndPets["Calvin"] = "🐯 Tiger"
//namesAndPets["Goku"] = nil
//
//for (character, pet) in namesAndPets {
//    print("\(character) has a \(pet)")
//}
//
//var me = [
//    "name" : "Danyil",
//    "profession" : "engineer",
//    "country" : "Ukraine",
//    "city" : "Kyiv",
//    "music" : "Rock"
//]
//
//me["country"] = "USA"
//
//func printCityState(ofPerson person: [String : String]) {
//    let city = person["city"] ?? "No city"
//    let music = person["music"] ?? "No music"
//    print(city, music)
//}
//printCityState(ofPerson: me)

//: `SETS`
//
//var someSet: Set<Int> = [1, 2, 3, 1]
//
//someSet.contains(1)
//let removedElement = someSet.remove(3)
//
//let anotherSet: Set<Int> = [14, 2, 5, 1]
//
//let intersection = someSet.intersection(anotherSet)
//let difference = someSet.symmetricDifference(anotherSet)
//let union = someSet.union(anotherSet)
//
//someSet.formUnion(anotherSet)

//: `CLOUSURE`

//typealias Operate = (Int, Int) -> (Int)
//
//func add(num1: Int, num2: Int) -> (Int) {
//    return num1 + num2
//}
//
//func printResultOf(_ a: Int, _ b: Int, operation: Operate) {
//    let result = operation(a, b)
//    print("Result is: \(result)")
//}
//
////printResultOf(2, 3, operation: add)
//
////let multiply: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
////    return a * b
////}
//
////let multiply: (Int, Int) -> Int = { (a, b) in
////    return a * b
////}
//
////let multiply: (Int, Int) -> Int = { $0 * $1 }
//
//printResultOf(2, 3) { $0 - $1 }
//

//: `CLOUSERS AND COLLECTIONS`
//
//var names: Array = ["Zeus", "Poseidon", "Ares", "Demeter"]
//
//// sort() & sort(by:) - Sorts in place / mutates the original
//names.sort()
//names.sort { (a, b) -> Bool in
//    a > b
//}
//
//
//// sorted() & sorted(by:) - Returns a new collection that is sorted
//let longToShortNames = names.sorted {
//    $0.count > $1.count
//}
//
//
//
//// `filter`
//var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
//
//
//
//
//// TODO: Rewrite the loop below using `filter`
//let largePrices = prices.filter { $0 > 5 }
//largePrices
//
//// `filter` as a `for` loop
//var arrayForFilteredResults: [Double] = []
//for price in prices where price > 5 {
//    arrayForFilteredResults.append(price)
//}
//arrayForFilteredResults
//
//// `map`
//// TODO: Rewrite the loop below using `map`
//let salePrices = prices.map {$0 * 0.9}
//salePrices
//
//// `map` as a `for` loop
//var arrayForSalePrices: [Double] = []
//for price in prices {
//    arrayForSalePrices.append(price * 0.9)
//}
//arrayForSalePrices
//
//// `reduce`
//// TODO: Rewrite the loop below using `reduce`
////let sumOfPrices = prices.reduce(0) { result, price -> Double in
////    return result + price
////}
//let sumOfPrices = prices.reduce(0, +)
//
//
//
//// `reduce` as a `for` loop - `array` version
//var doubleForSum = 0.0
//for price in prices {
//    doubleForSum += price
//}
//doubleForSum
//
//
//var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]
//
//// TODO: Rewrite the loop below using `reduce(into)`
//let stockWithSum = stock.reduce(into: []) { result, pair in
//    result.append(pair.key * Double(pair.value))
//}
//
//
//// `reduce` as a `for` loop - `dictionary` version
//var arrayForStockValues: [Double] = []
//for (price, quantity) in stock {
//    let value = price * Double(quantity)
//    arrayForStockValues.append(value)
//}
//arrayForStockValues
//
//
//// `compactMap` & `flatMap`
//let userInput = ["meow!", "15", "37.5", "seven"]
//
//// TODO Rewrite the loop below using `compactMap`
//let arrayValid = userInput.compactMap { input in
//    Int(input)
//}
//
//// `compactMap` as a `for` loop
//var arrayForValidInput: [Int] = []
//for input in userInput {
//    guard let input = Int(input) else {
//        continue
//    }
//    arrayForValidInput.append(input)
//}
//arrayForValidInput
//
//
//let arrayOfDwarfArrays = [
//    ["Sleepy", "Grumpy", "Doc"],
//    ["Thorin", "Nori"]
//]
//
//// TODO Use `flatMap` and `filter` to create a new array that only contains the dwarves with names starting after "M"
//let dwarfsAfterM = arrayOfDwarfArrays.flatMap { array -> [String] in
//    return array.filter { dwarf -> Bool in
//        dwarf > "M"
//    }
//}
//
//
//// `flatMap` as a `for` loop - I've leave this one as a bonus challenge!
//var arrayAfterM: [String] = []
//
//for array in arrayOfDwarfArrays {
//    for name in array {
//        if name.prefix(1) > "M" {
//            arrayAfterM.append(name)
//        }
//    }
//}
//
//let names = ["Nick", "Danyil", "Tony", "Alice"]
//let allNamesString = names.reduce("") { result, name in
//    return result + " " + name
//}
//
//let moreThanFourChar = names.filter {
//    $0.count > 4
//}.reduce("") { result, name in
//    return result + " " + name
//}
//
//let namesAndAges = ["Nick": 21, "Danyil": 25, "Tony": 17, "Alice": 12]
//let under18 = namesAndAges.filter {
//    $0.value >= 18
//}.map { nameAndAge in
//        return nameAndAge.key
//}
//

//: `STRUCTURES`
//typealias Miles = Double
//
//struct Location {
//    let x: Miles
//    let y: Miles
//
//    func getDistance(_ location: Location) -> Double {
//        return abs(x - location.x) + abs(y - location.y)
//    }
//}
//
//Location(x: 2, y: 3)
//
//struct Restaurant {
//    let location: Location
//    var deliveryDistance: Miles
//
//    func willDeliver(to location: Location) -> Bool {
//        return self.location.getDistance(location) <= deliveryDistance
//    }
//
//    func willOverlap(restaurant: Restaurant) -> Bool {
//        return
//            location.getDistance(restaurant.location)
//            <=
//            deliveryDistance + restaurant.deliveryDistance
//    }
//
//}
//
//let restaurants = [
//    Restaurant(location: Location(x: 2, y: 4), deliveryDistance: 2),
//    Restaurant(location: Location(x: 3, y: 5), deliveryDistance: 2)
//]
//
//restaurants[0].willOverlap(restaurant: restaurants[1])
//
//restaurants[0].location.getDistance(Location(x: 1, y: 4))
//restaurants[0].willDeliver(to: Location(x: 1, y: 2))
//
//extension Location {
//    var canGetPizzaDelivery: Bool {
//        return restaurants.contains { restaurant in
//            restaurant.willDeliver(to: self)
//        }
//    }
//}
//
//Location(x: 3, y: 0).canGetPizzaDelivery
//
//var restaurantMcDonalds = Restaurant(location: Location(x: 3, y: 0), deliveryDistance: 2)
//
//var copyRestaurantMcDonalds = restaurantMcDonalds
//
//restaurantMcDonalds.deliveryDistance = 8
//restaurantMcDonalds
//copyRestaurantMcDonalds
//
////Pizza
//typealias Inches = Int
//typealias Dollars = Double
//
//struct Pizza {
//    enum Topping {
//        case cheese
//        case peppers
//        case bacon
//    }
//
//    enum Crust {
//        case thick
//        case thin
//    }
//
//    let toppings: [Topping]
//    let size: Inches
//    let crust: Crust
//    let price: Dollars
//}
//
//let somePizza = Pizza(
//    toppings: [.cheese,
//               .bacon],
//    size: 6,
//    crust: .thin,
//    price: 7.99)

//: `PROPERTIES`
//struct Wizard {
//    var firstName: String
//    var lastName: String
//
//    var fullName: String {
//        get {
//            return "\(firstName) \(lastName)"
//        }
//        set(newFullName) {
//
//        }
//    }
//
//
//}
//
//var wizard = Wizard(firstName: "Gandalf", lastName: "Grey")
//
//wizard.firstName = "Harry"
//wizard.lastName = "Potter"
//wizard.fullName = " "
