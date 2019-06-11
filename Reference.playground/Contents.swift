//: `HOTKEYS`
//Ctrl + Shift + Click = несколько курсоров
//Ctrl + E = переместить курсор в конец строки
//Ctrl + R = run build
//Ctrl + Cmd + E = редактирование имени переменной в скобках
//Cmd + Shift + Arrows = выделить до конца или начала строки
//


//: `CODE COMMENTS`
//MARK: Dont forget something
//FIXME: I need to fix crash in this code
//TODO: Add onemore check
//: `USEFUL API`
//MARK: Extension to make first letter in sentence uppercased
//extension String {
//    var firstUppercased: String {
//        return prefix(1).uppercased()  + dropFirst()
//    }
//}

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

//: `CHARACTERS`
//let myText = "Hello my dear world, i love you so much!"
//var arrayTextChars = [Character]()
//
//for c in myText {
//    arrayTextChars.append(c)
//}
//arrayTextChars

//: `OPTIONALS`
// Guard and if let statement___________________________________________
//https://medium.com/@mimicatcodes/unwrapping-optional-values-in-swift-3-0-guard-let-vs-if-let-40a0b05f9e69
//// Implicit unwrapping_________________________________________________
//let someText = "123"
//var someInt = Int(someText)
//someInt = nil
//var someIntUwrapped = someInt ?? 0
//print(someIntUwrapped)
//
//
//// Nil-Coalescing operator___________________________________________________
//var someString: String? = "Thor"
//someString = nil
//let someStringUNwrapped = someString ?? "(optional) someString = nil"
//print(someStringUNwrapped)
//
//var catName: String? = "Superman"
//
//// Optional Binding_________________________________________________________
//if let catName = catName {
//    print(catName)
//} else {
//    print("catName is optional(nil)")
//}
//
//
//if let name = catName {
//    print("My cats name is \(name)")
//} else {
//    print("No cat")
//}
//
//var myNickName: String? = "Flash"
//
//func printNickname(_ nickname: String?) {
//    guard let nick = nickname else {
//        print("I dont have any nickname:(")
//        return
//    }
//    print("My nickname is \(nick)")
//}
//
//printNickname(myNickName)

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
//-----------------------------------------------------------------------



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

//: `CLOSURES`
//typealias Operate = (Int, Int) -> (Int)
//
//func add(num1: Int, num2: Int) -> (Int) {
//    return num1 + num2
//}
//
//func printResultOf(_ a: Int, _ b: Int, operation: Operate) -> Int {
//    let result = operation(a, b)
//    print("Result is: \(result)")
//    return result
//}
//
//printResultOf(2, 3, operation: add) + 1

//let multiply: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a * b
//}

//let multiply: (Int, Int) -> Int = { (a, b) in
//    return a * b
//}

//let multiply: (Int, Int) -> Int = { $0 * $1 }

//printResultOf(2, 3) { $0 - $1 }
//------------------------------------------------------------------------------
//let numbers = [3, 4, 7, 2, 21, 32, 8, 9, 3, 76, 32, 43, 12, 76, 89]
//
//var count = 0
//
//func filterArray(_ array: [Int], _ f: (Int) -> Bool) -> [Int] {
//    var filtered = [Int]()
//
//    for number in array {
//        count += 1
//        if f(number) {
//            filtered.append(number)
//        }
//    }
//    return filtered
//}
//
//let version1 =
//    filterArray(numbers, { (num: Int) -> Bool in
//        return num % 2 == 1
//    })
//
//let version2 =
//    filterArray(numbers, { num in
//        return num % 2 == 0
//    })
//
//let version3 =
//    filterArray(numbers, { $0 % 3 == 0 })
//
//let numbers2 = [1, 2, 3, 4, 5, 6, 7]
//
//
//
//var dictinaryNumbers2 = [Int: Bool]()
//for number in numbers2 {
//    dictinaryNumbers2[number] = true
//}
//dictinaryNumbers2[21]
//
//let matchArray =
//    filterArray(numbers) { nbrFromNumbers in
//        for nbrFromNumbers2 in numbers2 {
//            count += 1
//            if nbrFromNumbers == nbrFromNumbers2 {
//                return true
//            }
//        }
//        return false
//}
//
//let matchArrayDic =
//    filterArray(numbers) { key in
//        return dictinaryNumbers2[key] == true
//}
//
//let matchArrayDic2 =
//    filterArray(numbers) { dictinaryNumbers2[$0] == true }
//-------------------------------------------------------------------------
//func dz1(_ f: () -> ()) {
//    for i in 1...3 {
//        print(i)
//    }
//    f()
//}
//
//func prt() {
//    print("prt func")
//}
//
//dz1(prt)
//
//dz1 {
//    print("catwoman")
//}
//
//let numbers = [3, 4, 7, 2, 21, 32, 8, 9, 3, 76, 32, 43, 12, 76, 89]
//numbers.sorted(by: < )
//numbers.sorted { $0 < $1 }
//------------------------------------------------------------------------
//let numbers = [3, 4, 7, 2, 21, 32, 8, 9, 3, 76, 32, 43, 12, 76, 89]
//
//func arrayIntFunc(array: [Int], f: (Int, Int?) -> Bool) -> Int {
//    var optionalInt: Int?
//
//    for nbr in array {
//        if f(nbr, optionalInt) {
//            optionalInt = nbr
//        }
//    }
////    guard let nonOptionalInt = optionalInt else {
////        print("optionalInt == nil")
////        return 0
////    }
//    return optionalInt ?? 0
////    return nonOptionalInt
//}
//
//arrayIntFunc(array: numbers) {
//    $1 == nil || $0 > $1!
//}
//arrayIntFunc(array: numbers) { nbr, optionalInt in
//    if optionalInt == nil {
//        return true
//    }
//
//    if let nonOptional = optionalInt {
//        if nonOptional < nbr {
//            return true
//        }
//    }
//    return false
//}

//: `CLOSURES AND COLLECTIONS`
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
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
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
//let salePrices = prices.map({ $0 * 0.9 })
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
////STRUCT methods_____________________________________________________________
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
//--------------------------------------------------------------------------------
//
//: `LAZY STORED PROPERTIES`
//class DataImporter {
//    /*
//     DataImporter is a class to import data from an external file.
//     The class is assumed to take a nontrivial amount of time to initialize.
//     */
//    var filename = "data.txt"
//    // the DataImporter class would provide data importing functionality here
//}
//
//class DataManager {
//    lazy var importer = DataImporter()
//    var data = [String]()
//    // the DataManager class would provide data management functionality here
//}
//
//let manager = DataManager()
//manager.data.append("Some data")
//manager.data.append("Some more data")
//// the DataImporter instance for the importer property has not yet been created
//-------------------------------------------------------------------------------

//: `Computed properties`
//extension String {
//    var firstUppercased: String {
//        return prefix(1).uppercased()  + dropFirst()
//    }
//}
//
////Property Observers__________________________________________________________
//struct Student {
//
//    static let weapon = "Sword"
//    static var totalStudents = 0
//
//    var firstName: String {
////        willSet(newFirstName) {
////            print("willset \(newFirstName) instead of \(firstName)")
////        }
//        didSet(oldFirstName) {
//            firstName = firstName.firstUppercased
//        }
//    }
//
//    var lastName: String {
//        didSet {
//            lastName = lastName.firstUppercased
//        }
//    }
//
//    var fullName: String {
//        get { return firstName + " " + lastName }
//        set {
//            //print("fullName want to be set to \(newValue)")
//            //Converting substring to string
////            let arrNewValue = newValue.split(separator: " ").map(String.init)
////
////            if arrNewValue.count > 0 {
////                firstName = arrNewValue[0]
////            }
////            if arrNewValue.count > 1 {
////                lastName = arrNewValue[1]
////            }
//            let arrNewValue = newValue.split(separator: " ").map(String.init)
//
//            guard arrNewValue.count == 2 else {
//                print("fullName must contain first and last name")
//                return
//            }
//
//            firstName = arrNewValue.first!
//            lastName = arrNewValue[1]
//        }
//    }
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//
//        Student.totalStudents += 1
//    }
//
//}
//
//var studentBoy = Student(firstName: "Danyil", lastName: "Zborovskyi")
//studentBoy.fullName
//
//studentBoy.fullName = "Bob Li"
//studentBoy.fullName
//Student.weapon
//Student.totalStudents
//
//struct Temperature {
//    var fahrenheit: Double {
//        didSet {
//            if fahrenheit > 100 {
//                print("warning \(fahrenheit) F")
//            }
//        }
//    }
//    var celsius: Double {
//        get { return (fahrenheit - 32) / 1.8 }
//        set { fahrenheit = newValue * 1.8 + 32 }
//    }
//
//}
//
//var kyiv = Temperature(fahrenheit: 5)
//kyiv.celsius
//kyiv.celsius = 39
//kyiv.celsius
//kyiv.fahrenheit
//______________________________________________________________________________

//struct Student {
//    var firstName: String
//    var lastName: String
//    var grade: UInt
//}
//
//struct Classroom {
//    var className: String
//    var students: [Student]
//
//    func highestGrade() -> UInt? {
//        return students.map { $0.grade } .max()
//    }
//
//}
//
//var firstClass = Classroom(
//    className: "GoT",
//    students: [
//        Student(firstName: "Maxim", lastName: "Destro", grade: 5),
//        Student(firstName: "John", lastName: "Snow", grade: 78),
//        Student(firstName: "Dany", lastName: "Targaryen", grade: 41)
//    ])
//firstClass.highestGrade()
//
//extension Classroom {
//    mutating func curveGrades() {
//        guard let highest = highestGrade() else {
//            print("students == nil")
//            return
//        }
//
//        students = students.map { [diffGrade = 100 - highest] student in
//            var student = student
//
//            student.grade += diffGrade
//            return student
//        }
//        .sorted{ $0.grade > $1.grade }
//
//    }
//}
//
//firstClass.curveGrades()
//firstClass.students

//: `CLASSES`


//: `INITIALIZATION`
//struct Celsius {
//    var temperatureInCelsius: Double
//    init(fromFahrenheit fahrenheit: Double) {
//        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
//    }
//    init(fromKelvin kelvin: Double) {
//        temperatureInCelsius = kelvin - 273.15
//    }
//    init(_ celsius: Double) {
//        temperatureInCelsius = celsius
//    }
//}
//let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
//// boilingPointOfWater.temperatureInCelsius is 100.0
//let freezingPointOfWater = Celsius(fromKelvin: 273.15)
//// freezingPointOfWater.temperatureInCelsius is 0.0
//let bodyTemperature = Celsius(37.0)
//// bodyTemperature.temperatureInCelsius is 37.0

// Designated and Convenience Initializers_______________________________________
//class Student {
//    var firstName: String = ""
//    var lastName: String = ""
//    var fullName: String {
//        return firstName + " " + lastName
//    }
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//}
//
//class musicBand: Student {
//    var instrument: String
//    var experience: Int
//
//    init(firstName: String, lastName: String,
//         inst instrument: String, exp experience: Int) {
//        self.instrument = instrument
//        self.experience = experience
//        super.init(firstName: firstName, lastName: lastName)
//    }
//
//    convenience init(inst instrument: String) {
//        self.init(firstName: "", lastName: "", inst: instrument, exp: 0)
//    }
//
//    convenience init(exp experience: Int) {
//        self.init(firstName: "", lastName: "", inst: "", exp: experience)
//    }
//}
//
//
//var joe = musicBand(exp: 5)
//var mark = musicBand(inst: "Piano")
//mark.experience
//joe.instrument


// Optional init_____________________________________________________________________

//class SurveyQuestion {
//    var text: String
//    var response: String?
//    init(text: String) {
//        self.text = text
//    }
//    func ask() {
//        print(text)
//    }
//}
//let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
//cheeseQuestion.ask()
//// Prints "Do you like cheese?"
//cheeseQuestion.response = "Yes, I do like cheese."
//print(cheeseQuestion.response!)

//: `PROTOCOLS`
//protocol Animal {
//    var side: String { get }
//}
//
//class Cow: Animal {
//    var name: String = ""
//    var side: String = "Evil"
//
//    func cowBoss() { }
//}
//
//class Dog: Animal {
//    var power = "dark"
//    var side: String = "Good"
//
//}
//
//var cow1 = Cow()
//var cow2 = Cow()
//var cow3 = Cow()
//var cow4 = Cow()
//
//var dog1 = Dog()
//var dog2 = Dog()
//var dog3 = Dog()
//var dog4 = Dog()
//
//
//
//var arrayOfAnimals: [Animal] = [
//    cow1, dog1, dog2, cow2, cow3, cow4, dog3, dog4
//]
//
//for animal in arrayOfAnimals {
//    print(animal.side)
//}

//: `Memory management`
//class Person {
//    let name: String
//    weak var bestBuddy: Person?
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    deinit {
//        print("class with object name: \(name) deallocated")
//    }
//}
//
///*
//var person: Person? = Person(name: "Alex")
//person = Person(name: "Pink")
//person = nil
//*/
//
//var alex: Person? = Person(name: "Alex")
//var jimmy: Person? = Person(name: "Jimmy")
//
//alex?.bestBuddy = jimmy
//jimmy?.bestBuddy = alex
//
//alex = nil
////jimmy?.bestBuddy = nil
