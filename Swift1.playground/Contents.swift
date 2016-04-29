//: Playground - noun: a place where people can play

import UIKit
//
//var str = "Hello, playground"
//print("hello, word")
//print("%d", 100)
//
//let a = 10
//var b = a
//let c = 99
//// c = 300
//b = 400
//var myVariable = 42
//myVariable = 40
//let myConstant = 42
//var my : Float = 43
//my = 43.4
//
//let implicitinteger = 40
//let impd = 55.0
//let exdp : Double = 455
//var aaa = impd
//var bbb : Double = Double(implicitinteger)
//bbb = impd
//
//let label = "I am taoye"
//let name = "taoye"
//let age = 44
//let people = label + name + " ==" + String(age)
//
//let number = 3000
//let sum = "my name is \(name + String(age)), my age is \(age + age)"
//
//let cfda = "fda \(age) fda"
//let fda = "\"  \" \(name)"
//let arr1 = ["fda", "fkkkk", "fda", "fdas"]
//var arr2 = ["fdas", "fd", "fdsafdsaf", 100];
//arr2[2] = "fdsafdsafsd"
//arr2[1] = "fds"
//print(arr2)
//
//
//var dict1 = ["name" : "json", "age" : 44, "gx" : "dddd"]
//let dict2 = ["name" : "fdafd", "age" : 30];
//
//dict1["fdsa"] = "fd"
//dict1["name"] = dict2["name"]
//dict1["age"] = dict2["age"]
//print(dict1)
//
//let emptyArray = [String]()
//let emptyArray2 = [Int]()
//let emptyDictionary = [String : Float]()
//var emptyArray4 = [String]()
//emptyArray4[0] = "fda"
////emptyArray4.append("fff")
////print(emptyArray4)
//
//let dfsf = []
//let ofd = [:]
//
//


//var a = ["fdsa", 4]
//var arr : NSMutableArray = ["fdsfd", "fdsa"]
//arr.addObject("fdsa33")
//var dict : NSMutableDictionary = ["name" : "jack"];
//dict.setValue(20, forKey: "age")
//
//
//var emp = [String]()
//let emptyDict = [:]
//var emptydict2 = [String : Double]()
//let empArr = []

/*

let individualScores = [55, 43, 5667, 76, 765]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
        print(score)
    } else {
        teamScore += 1
        print(score)
    }
}


var optionalString : String? = "Hello"
print(optionalString == nil)
var optionalName : String? = "John Appleseed"
//optionalName = nil
var greeting = "hellofffff"
if let name = optionalName {
    greeting = "hello, \(name)"
//    greeting += name
//    optionalName = "eeeee"
    let number = 1233
    greeting = "fdsadf \(name)"
} else {
//    greeting = "fff"
}
print(greeting)


// fullName 表示默认值， ？？ 如果nickName 为nil 使用默认值， 否则，使用nickName的值
let nickName : String? = nil
let fullName : String = "John Appleseed"
let informalGreeting = "hi \(nickName ?? fullName)"

/**
*  Switch
*/

let vegetable = "red pepper"
switch vegetable {
    case "name":
        print("it is a name")
    case "red peppeddr":
        print("fdafdafdklfdkl")
    case "hahhaha":
        print("it is a hahah")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("is it a spicy \(x)?")
default:
    print("everything tastes good in soup")
}

let num : Int = 4
switch num {
case 103:
    print("fda")
case 100:
    print("103")
case 10, 30:
    print(10, 30)
case let x where x > 3:
    print("fdsafdfsa \(x)")
    print("fdsa")
default:
    print("fdafdsak")
}


// for - in
let interestringNumbers = [
    "Prime" : [2, 3, 4, 6, 7, 4],
    "Fibonacci" : [1, 1, 144, 33, 4, 5],
    "Square" : ["fda", "fdsa", "fdsakl"]
]

var largest = 0

for (kind, numbers) in interestringNumbers {
    print(kind)
    let arr = interestringNumbers[kind]
    print(arr)
    print(numbers)
    for number in numbers {
        print(number)
//        if number > largest {
//            largest = number
//        }
    }
}

print(largest)


// while 
var n = 2
while n < 100 {
    n *= 2
}
print(n)

print(n + 1)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)


//..<

var firstForLoop = 0
for i in 1...4 {
    firstForLoop += 1
    print(i)
}
print(firstForLoop)

var secondForLoop = 0
for var i = 1; i < 4; ++i {
    secondForLoop += 1
}
print(secondForLoop)



// func

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}
greet("德武", day: "星期一")

func greeta(name : String, food: String) -> Int {
    return 3
}
greeta("daf", food: "fda")

//    - (void)aaa:(nsstring *)name {
//        
//}


func calculateStatistics(scores: [Int]) -> (min : Int, max : Int, sun: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }
        if score < min {
            min = score
        }
        sum += score;
    }
    return (min, max, sum)
}

let statistics = calculateStatistics([32, 43, 54,65, 43, 32323, 43,0, -133])
print(statistics)
print(statistics.min)



func sumOf(numbers: Int...) -> Int {
    var sum  = 0
    for number in numbers {
        sum += number
    }
    return sum;
}

sumOf(12, 34, 44, 1, 4)
sumOf()
func averageOf(numbers: CGFloat...) -> CGFloat {
    var sum : CGFloat = 0.0
    for number in numbers {
        sum += number
    }
    print(numbers.count)
    let average = sum / CGFloat(numbers.count)
    return average
}

averageOf()


// 函数嵌套
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()


// 函数作为返回值 ， 函数是第一等类型

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(10)
print(increment(10))


// 函数当参数
func hasAnyMatches(list:[Int], condition:Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [30, 10, 55, 34, 55]
hasAnyMatches(numbers, condition: lessThanTen)

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

var aa = ["fd" : "fdsafds", "fdsafdsaf" : "fdafff"];

numbers.map({
        (number: Int) -> CGFloat in
        let aaa = number * 2
        let bbb = CGFloat(aaa)
        return bbb
})


let mappednumbers = numbers.map { number in
    3 * number
}
print(mappednumbers)


let sortedNumbers = numbers.sort{$0 > $1}
print(sortedNumbers)

//var aa = ["fd", "fd"]
var dict = ["fd" : 10, "fds" : "fds"]
dict.map{(kind, value) in kind
}

var d = NSMutableArray(array: [10])
var dd = NSData()
print(dd)
var date = NSDate()




// 对象和类

class Shape {
    var numberOfSides = 0
    private let _name = "taoye"
    
    func shimpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func temp1(name : String) -> String {
        return "I am is \(name)."
    }
}

var shape = Shape()
shape.numberOfSides = 7
shape.shimpleDescription()
shape.temp1("taoye")

class NameShape {
    var numberOfSides: Int = 0
    var name: String?
    var age : Int? = 0
    init(name : String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    init() {
        self.name = "fads"
    }
    deinit {
        self.name = nil
        self.name = "fdsalkfdsafd"
    }
}
class Square : NameShape {
    
    var sideLength : Double
    init(name: String, sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
    override init(name: String) {
        self.sideLength = 33
        super.init(name: name)
//        self.name = "fda"
    }
}
let test = Square(name: "taoye", sideLength: 44)
test.area()
test.simpleDescription()
let test1 = Square(name: "taoye1")
test1.area()



class EquilateralTrangle: NameShape {
    var sideLength : Double = 0.0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
        self.numberOfSides = 55
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    var oldName = "fda"
    var adge : Int? {
        willSet {
            oldName = "willSet"
        }
        didSet {
            oldName = "didSet"
        }
    }
    
    override func simpleDescription() -> String {
        return "an equilateral triagle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTrangle(sideLength: 3.3, name: "taoye")
    print(triangle.perimeter)
    triangle.perimeter = 113.0
    print(triangle.sideLength)
    triangle.adge = 10
    print(triangle.adge)
    print(triangle.oldName)


class TriangleAndSquare {
    deinit {
        
    }
    
    init() {
        self.square = Square(name: "tao", sideLength: 3333)
        self.triangle = EquilateralTrangle(sideLength: 444, name: "ye")
    }
    init(size: Double, name: String) {
        square = Square(name: name, sideLength: size)
        triangle = EquilateralTrangle(sideLength: size, name: name)
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    var triangle: EquilateralTrangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
}

var trangleAndSquare = TriangleAndSquare(size: 10, name: "taoye")
print(trangleAndSquare.square.sideLength)
print(trangleAndSquare.triangle.sideLength)
trangleAndSquare.square = Square(name: "hantaoYe", sideLength: 400)
print(trangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(name: "taoye", sideLength: 3.4)
//    optionalSquare = nil
let sideLength = optionalSquare?.sideLength

*/

/*

// 枚举和结构体

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, five, Six, Seven, Eight, Nine, Ten, taoye
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "name:ce"
        case .Jack:
            return "name.jack"
        case .Queen:
            return "name.queen"
        case .King:
            return "name.king"
        case .Three:
            return "name.Three"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
ace.rawValue
let twoa = Rank.Two.rawValue
print(twoa)
let three = Rank.Four.rawValue
ace.simpleDescription()
let five = Rank.five
five.simpleDescription()
let jack = Rank.Jack
jack.rawValue

if let convertedRank = Rank(rawValue: 3) {
    let threedescription = convertedRank.simpleDescription()
}


enum Suit {
    case Sqades, Hearts, Diamonds, Clubs
    case One, Two, Three
    func simpleDescription() -> String {
        switch self {
        case .Sqades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "Diamonds"
        case .Clubs:
            return "Cludbs"
        case .One:
            return "one"
        case .Two:
            return "Two"
        case .Three:
            return "Three"
        }
    }
}
let hearts = Suit.Hearts
let haa = Suit.One
let heartsDescription = hearts.simpleDescription()
let one = haa.simpleDescription()
let two = Suit.Two.simpleDescription()
let sqades = Suit.Sqades


enum name : String {
    case Jack
    case naoray, taoye = "fad", baobao
    case dewu, lina
    func someoneName() -> String {
        switch self {
        case .Jack:
            return "name is jack"
        case .naoray:
            return "name is naoray"
        case .taoye:
            return "da shuai ge"
        case .baobao:
            return "name is baobao"
        default:
            return self.rawValue
        }
    }
}

let jactk = name.Jack.rawValue
let nao = name.naoray.rawValue
let tao = name.taoye
tao.someoneName()



struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

//let suit = Suit.Sqades
//let ranks = Rank(rawValue: 1)
let threeOfSpades = Card(rank:.taoye, suit:.Three)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


enum ServerResponse {
    case Result(String, String)
    case Error(String)
    case aaa
}
let success = ServerResponse.Result("44 am", "55 pm")
let failure = ServerResponse.Error("Out of cheess.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Faliure... \(error)"
case .aaa:
    print("fdsa")
}

*/

/**
*  协议和扩展
*/
/*
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
    func aafda() -> String
    mutating func haha()
}


class SimpleClass: ExampleProtocol {
    var simpleDescription : String = "A very simple class"
    var anotherProperty: Int = 696969
    func adjust() {
        simpleDescription += "Now 100% adjusted"
    }
    func aafda() -> String {
        return simpleDescription
    }
    func haha() {
        
    }
    var _name : String?
    init(name: String) {
        _name = name
    }
    init() {
    
    }
    var afds : String {
        get{
            return "fdsalk"
        }
    }
}

var a = SimpleClass(name: "fsda")
var ba = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
let ha = a.aafda()
print(ha)
a.haha()


struct SimpleStructured: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
    func aafda() -> String {
        return simpleDescription
    }
    func haha() {
        
    }
}

var b = SimpleStructured(simpleDescription: "fdafdsfds")
b.adjust()
let bDescription = b.simpleDescription
let adff = b.aafda()
b.haha()


enum heheEnufm: String, ExampleProtocol {
    case a = "fdas"
    case b, c, d
    func adjust() {
    }
    func aafda() -> String {
        return "fd"
    }
    func haha() {
        
    }
    var simpleDescription : String {
        set{
        }
        get{
            return "fdsafsdkl"
        }
    }
}

let heh = heheEnufm.a
let aa = heh.simpleDescription


extension Int: ExampleProtocol {
    var simpleDescription : String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
    mutating func haha() {
        self += 44
    }
    func aafda() -> String {
        return "hahahahha"
    }
}

print(7.simpleDescription)


let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)

*/

/*

/**
*  泛型
*/

func repeatItem<Item>(item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
repeatItem("knock", numberOfTimes: 4)
func fdafsd<haha>(ff: haha) -> haha {
    return ff;
}

fdafsd("fdsalk")

func fdasklfdsaj() {

}

enum optionalValue<Wrapped> {
    case None
    case Some(Wrapped)
}

var possibleinteger: optionalValue<Int> = .None
possibleinteger = .Some(100)
switch possibleinteger {
case let .Some(hah):
    print(hah)
default:
    print("100fdsa")
}

func anyCommonElements <T: SequenceType, U: SequenceType where T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (Ihs: T, _ rhs: U) -> Bool {
    for IhsItem in Ihs {
        for rhsItem in rhs {
            if IhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])

*/

/*
/**
*  空🈴运算符
*/
var a : Int?;
let b = 30;
let c = a != nil ? a! : b
c
let d = a ?? b
d

let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName


userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

let add : UInt64 = 1000
let cv = UInt64.max
let f = UInt8.min
let fff = Int8.min
let ffe = Int32.max

var bgf : String?


*/

/*
/**
*  错误处理 及 断言
*/

func canThrowAnError() throws {
    var str = "haha"
    str = "f"
    print(str)
}


do {
    try canThrowAnError()
} catch {
    
}

func makeASandwich() throws {
    
}
//
//do {
//    try makeASandwich()
//    // TODO
//} catch Error.OutOfCleanDishes {
//    washDishes()
//    
//} catch Error.MissingIngredients(let ingredients) {
//    buyGroceries(ingredients)
//}

func haha() {

}

haha()

let a = 10
assert(a > 0, "fdasfkldsafls")
assert(a < 0)
*/



/*
 * 字符
*/

/*
let someString = "Some String literal value"

var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}

var variableString = "Horse"
variableString += "and carriage"

var constantString = "Highlander"
constantString += "and another Highlander"

constantString.characters

for character in "dfafasf".characters {
    print(character)
}

let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!"]

print(catCharacters)
let catString = String(catCharacters)

let  string1 = "hello"
let  string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

//let exclamationMark: Character = "!"
welcome.append(exclamationMark)

let  string33 = "fda"
welcome.stringByAppendingString(string33)


let multiplier = 3
let  message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"


//\u{0061}

let bff = "\0"
let  aaaa = "\\, \t, \n, \r \"/\'  "

let  wiseWords = "\"imageination is more important than knowledge\" - Einstein"
let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparkLingHeart = "\u{1f495}"

let eAcute: Character = "\u{E9}"
let combinedEacute: Character = "\u{65}\u{301}"


let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"


let unusualMenagerie = "Koala, Snail, Penguin, Dromedary"
print("fadlfsdafdsa \(unusualMenagerie.characters.count)")




var word = "cafe"
print("fjsadlkfjdlsfs \(word) is \(word.characters.count)")
word += "\u{301}"
print("fjsadlkfjdlsfs \(word) is \(word.characters.count)")



let greeting = "Guten tag!"
greeting[greeting.startIndex]
greeting[greeting.endIndex.predecessor()]
greeting[greeting.startIndex.successor()]
greeting[greeting.startIndex.successor().predecessor()]
let index = greeting.endIndex.advancedBy(-1)
greeting[index]


for index in greeting.characters.indices {
    print("\(greeting[index])")
}


var welcome1 = "hello"
welcome1.insert("1", atIndex: welcome1.endIndex)
welcome1.insertContentsOf("thfdafdsa".characters, at:welcome1.startIndex)

welcome1.removeAtIndex(welcome1.endIndex.predecessor())
print(welcome1)


let range = welcome1.endIndex.advancedBy(-6)..<welcome1.endIndex

welcome1.removeRange(range)
print(welcome1)
//welcome1.removeAll()
//print(welcome1)
welcome1.removeAll(keepCapacity: false)
print(welcome1)



let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
} else {
    print("deffieint")
}

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let comblinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == comblinedEAcuteQuestion {
    print("equal")
} else {
    print("NO")
}


let latinCapitalLetterA : Character = "\u{41}"
let cyrillicCapitallLetterA: Character = "\u{0410}"
if latinCapitalLetterA == cyrillicCapitallLetterA {
    print("equal")
} else {
    print("NO")
}

let romeoAndJuliet = [
    "Act 1 Scene 1",
    "Act 1 Scene 2",
    "Act 1 Scene 3",
    "Act 1 Scene 4",
    "Act 1 Scene 5",
    "Act 1 Scene 6",
    "Act 1 Scene 7",
    "Act 1 Scene 8"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}
print(act1SceneCount)

var act2 = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("1") {
        act2 += 1;
    }
}
print(act2)


var mansionCount = 0
var cellCount = 0

for scene in romeoAndJuliet {
    if scene.hasSuffix("1") {
        mansionCount += 1
    } else if scene.hasSuffix("2") {
        cellCount += 1
    }
}

print(mansionCount, cellCount)


let dogString = "Dog!!"

for codeUnit in dogString.utf16 {
    print("\(codeUnit)", separator: "", terminator: "")
}

*/


/*
 * 集合类型
 */

/*
var someInts = [Int]()
var hahah : Array<Int> = Array()
print("someInts is of type [Int with \(someInts.count) items.]")

someInts.append(3)
someInts = []
someInts.append(43)

var therrDoubles = [Double](count: 3, repeatedValue:0.0)

[Int](count:3, repeatedValue:4)

var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
var sixDouble = anotherThreeDoubles + therrDoubles


var shoppingList:[String] = ["eggs", "milk"]

shoppingList.count

if shoppingList.isEmpty {
    print("empty")
} else {
    print("NO empty")
}


shoppingList += ["fdafds", "ffff"]
var firstItem = shoppingList[0]
shoppingList[0] = "taoye"
shoppingList += ["lina", "dewu"]

shoppingList[1...3] = ["fdsalk", "fdsafs", "he", "fdasfds"];
print(shoppingList.count)
//var haha = shoppingList
shoppingList[6] = "fdsa"
shoppingList.append("fdsa")
shoppingList.insert("hahahahahaha", atIndex: 0)
shoppingList.removeAtIndex(6)
shoppingList.removeLast()

for (index, f) in shoppingList.enumerate() {
    print("item\(String(index + 1))\(f)")
}

var arr = ["fdsa", 3]
arr.removeAll()
arr.append("fdsa")
arr.append(100)
arr.append(9.4)
var fasd = [String]()
var fdfff : Array<Int> = Array()
arr.append(fasd)

// 集合
let aafds = 10
aafds.hashValue
if fasd == fdfff {
    print("equal")
} else {
    print("NO")
}


var namesOfIntegers = [Int : String]()
namesOfIntegers[16] = "fdsaklfds"
namesOfIntegers = [:]

var airports: [String : String] = ["fsda": "fdsa", "hahah": "hahah", "nihao": "nihao"];
airports.count
airports.isEmpty

airports["LHR"] = "London "
airports.count

airports["LHR"] = "haah"

if let oldValue = airports.updateValue("lllll", forKey: "LHR") {
    print("The old value for LHR was \(oldValue)")
}
airports.count
airports["LHR"] = nil
airports.count
airports["LHR"] = "fdsafdsa"
airports.count
//airports.removeValueForKey("LHR")
airports.count
airports.count

for airportCode in airports.keys {
    print("fadsfkjlfasdjlk  \(airportCode)")
}

for airportName in airports.values {
    print("fadsfkjlfasdjlk  \(airportName)")
}

for (a, b) in airports {
    print(a, b)
}

let airportCodes = [String](airports.keys)
//airports.sort()



var ffd = ["fds": 1]
ffd["fd"] = 3

var array = ["fds"]
array.append("fds")



// 集合

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("f")

letters.count


letters.insert("a")
letters = []

var testSet: Set = ["fds", "fds", 4]
testSet.insert(1)


var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
favoriteGenres.count
favoriteGenres.removeFirst()
favoriteGenres.count
favoriteGenres.insert("Hip hop")
favoriteGenres.count


if favoriteGenres.isEmpty {
    print("AS far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

favoriteGenres.insert("Hazz")
favoriteGenres.remove("Hazz")
favoriteGenres.remove("fjdklsafjsdlafjsdl")

if let removeGenre = favoriteGenres.remove("Rock") {
    print("\(removeGenre) I'm over it.")
} else {
    print("I never much cared for that.")
}

favoriteGenres.contains("Funk")
favoriteGenres.contains("Hip hop")

for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sort() {
    print("\(genre)")
}
favoriteGenres.sort()



let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits)
oddDigits.intersect(evenDigits).sort()
oddDigits.intersect(singleDigitPrimeNumbers)
oddDigits.subtract(singleDigitPrimeNumbers).sort()
oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐷", "🐶", "🐱", "jiji"]
let cityAnimals: Set = ["fjdklsafjdsl", "fdjskl"]
houseAnimals.isSubsetOf(farmAnimals)

farmAnimals.isSupersetOf(houseAnimals)
farmAnimals.isDisjointWith(cityAnimals)

houseAnimals == favoriteGenres

houseAnimals.isStrictSubsetOf(farmAnimals)
houseAnimals.isDisjointWith(farmAnimals)

 */

/*

/*
 * switch
 */


let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount)  \(countedThings).")


let  somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("(0, 0)is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside the box")
}

let anotherPoint = (2, 1)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case (let x,let y):
    print("someWhere else at (\(x), \(y))")
}


// where

let yetAnotherPoint = (2, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("hahahhahah")
}

// 贯穿

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 4, 5, 6, 7,8,9:
    description += "a prime number, and also"
//    fallthrough
case let x where x == 0:
    description += "hahah \(x)"
    fallthrough
default:
    description += " nininini \(integerToDescribe)"
}

print(description)

var arr1 = [1, 3, 4, 5, 6, 4, 2323, 5]

var arr2 : Array<Int>? = []

haha: for index in arr1 {
    for y in arr1 {
        if y == 5 {
            break haha
        }
        arr2?.append(y)
    }
}
print(arr2)


func greet(person: [String: String]) {
    guard let name = person["name"] else {
        print("fdsakl")
        return
    }
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}
//greet(["name": "John", "location": "shanghai"])
greet(["location": "shanghai"])

if #available(iOS 9,OSX 10.10, *) {
    
}

*/

/*
 * 函数
 */

/*

func someFunction(fristParameterName: Int, secondParameterName: Int) {

}


someFunction(4, secondParameterName: 3)
//someFunction(1, 3)

//someFunction(first: 4, fdsafklds: 2)

// 可变参数
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total
}

arithmeticMean(1, 40, 55, 440, 3)

// 默认参数

func someaFunction(parameterWithDefault: Int = 13) {
    print(parameterWithDefault)
}

someaFunction(10)

func testFunction(one : Int, _ two : Int = 300, number: Int...) {
    var total = 0
    for num in number {
        total += num
    }
    print("one \(one), tow \(two), number \(total)")
}

testFunction(3, number: 9, 4, 5)

testFunction(30, 3430, number:5, 6)

// 常量参数和变量参数
func alignRight(var string: String, totalLength: Int, pad: Character) -> String {
    let amountToPad = totalLength - string.characters.count
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}

let originalString = "hello"
let paddedString = alignRight(originalString, totalLength: 10, pad: "-")


//输入输出参数

func swapTwoInts(inout a: Int,inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 103
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt) and anotherInt is now \(anotherInt)")


// 函数类型
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

var mathFunction: (Int, Int) -> Int = addTwoInts

let a = mathFunction(1, 4)


func printMathResult(mathFuction: (Int, Int) -> Int, _ a: Int, b: Int) {
    print("Result: \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, b: 24)



func stepForward(input: Int) -> Int {
    print("+++ \(input)")
    return input + 1
}

func stepBackward(input: Int) -> Int {
    print("-------- \(input)")
    return input - 1
}

func chooseStepFunction(backwards: Bool) -> ((Int) -> Int) {
    return backwards ? stepBackward : stepForward
    
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)
moveNearerToZero(1)

print("Counting to zero.")

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")


func aachooseStepFunction(backwards: Bool) -> (Int) -> Int {
    func setpForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    return backwards ? stepBackward : setpForward
}

var currentValuea = -4
let amoveNearerToZero = aachooseStepFunction(currentValuea > 0)
while currentValuea != 0 {
    print("\(currentValuea)...")
    currentValuea = amoveNearerToZero(currentValuea)
}

print("zero!")

 */


/* 
 * 闭包
 */
/*

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sort()
var  anotherReversed = names.sort(backwards)

let ages = [3, 5, 6, 332, 4, 1]

var tempAge = ages.sort()
let money = [4.5, 5.5, 1.3, 55.56, 0.4, -3.5]
money.sort()

func double1(d1: Double, d2: Double) -> Bool {
    return d1 > d2
}
money.sort(double1)

//let test = ["fds", 12, "ef", 13.4]


reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})

reversed = names.sort({s1, s2 in return s1 > s2})

reversed = names.sort({s1, s2 in s1 > s2})
reversed = names.sort({$0 > $1})

reversed = names.sort(>)
reversed = names.sort(){$0 > $1}

func someFunctionThatTakesACosure(closure:() -> Void) {
    print("函数体")
    closure()
}
someFunctionThatTakesACosure({
    print("fds")
})
someFunctionThatTakesACosure {
    print("fdsakl")
}
someFunctionThatTakesACosure() {
    print("fadsaaaaaaaaaa")
}

let digitNames = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let numbers = [15, 58, 510]

let strings = numbers.map() { (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}


func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementor(forIncrement: 8)
incrementBySeven()
incrementBySeven()

incrementByTen()

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()


func someFunctionWithNoescapeClosure(@noescape closure: () -> Void) {
    closure()
}

var completionHandlers:[() -> Void] = []
func someFunctionWithEscapingClosure(completionHander: () -> Void) {
    completionHandlers.append(completionHander)
}

class SomeClass {
    var x = 10
    func doSomething() -> Void {
        someFunctionWithEscapingClosure { 
            self.x = 100
        }
        someFunctionWithEscapingClosure {
            self.x = 200
        }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)
completionHandlers.first?()
//var arr : [String]?
print(instance.x)
completionHandlers.count

var customerInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customerInLine.count)

let customerProvider = {
   return customerInLine.removeAtIndex(0)
}

print(customerInLine.count)
customerProvider()
print(customerInLine.count)

func serveCustomer(@noescape customerProvider:() -> String) {
    print("now servig \(customerProvider())")
}

serveCustomer { () -> String in
    customerInLine.removeAtIndex(0)
}

//func serveCustomer(<#parameters#>) -> <#return type#> {
//    <#function body#>
//}

func serveCustomer(@autoclosure customerProvide:() -> String) {
    print("Now serving \(customerProvider())")
}

serveCustomer(customerInLine.removeAtIndex(0))


var customerProvidersss: [() -> String] = []
func collectCustomerProviders(customerProvider: () -> String)  {
    customerProvidersss.append(customerProvider)
}
collectCustomerProviders { () -> String in
    customerInLine.removeAtIndex(0)
}
//collectCustomerProviders(customerInLine.removeAtIndex(0))
//collectCustomerProviders(customerInLine.removeAtIndex(0))

print("Collected \(customerProvidersss.count) closures.")

for customerProvider in customerProvidersss {
    print("Now serving \(customerProvider())")
}
customerInLine.count

print("now serving barry!")

*/

/*
 * 枚举
 */

/*
enum CompassPoint {
    case North
    case South
    case East
    case West
}

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}
var productBarcode = Barcode.UPCA(4, 5555, 333333, 2)

switch productBarcode {
case .UPCA(let Number, let int1, let int2, let int3):
    print("\(Number)   \(int1)  \(int2)   \(int3)")
case .QRCode(let str1):
    print(str1)
}


enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

let aa = ASCIIControlCharacter.Tab
aa.rawValue

let aaa = ASCIIControlCharacter(rawValue: "\n")


enum  ArithmeticExpression {
    case Number(Int)
   indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
//    case aaa(String)
}


func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case .Number(let value):
        return value
    case .Addition(let left , let right):
        return evaluate(left) + evaluate(right)
    case .Multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
//    case .aaa("f"):
//        return 30000
    }
}

let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.Multiplication(sum, ArithmeticExpression.Number(2))
print(evaluate(product))

*/
/*
 * 类和结构体
 */

/*
struct Resolution {
    var width = 0
    var height = 0
    
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

var haha = Resolution()
haha.width = 19
haha.height = 44
let hd = Resolution(width: 33, height: 44)

var cinema = hd
cinema.width = 2044
cinema.width
hd.width


enum  CompassPint {
    case Norh, South, East, West
}

var currentDirection = CompassPint.East

var rememberdDirection = currentDirection

currentDirection = .Norh
rememberdDirection

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "3391"
tenEighty.frameRate = 333

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 444
alsoTenEighty.frameRate
tenEighty.frameRate
alsoTenEighty.resolution = Resolution(width: 3333, height: 2222)
alsoTenEighty.resolution.height
tenEighty.resolution.height

let aa = alsoTenEighty !== tenEighty
//let bb = currentDirection === rememberdDirection

 */

/*
 * 属性
 */
/*
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 5)
rangeOfFourItems.firstValue = 9

class Datalmporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = Datalmporter()
    var data = [String]()
    
}

let manager = DataManager()
manager.data.append("some data")
manager.data.append("SOme more data")
manager.importer


struct Point {
    var x = 0.0, y = 0.0
}
let p = Point(x: 33, y: 33)
struct Size {
    var width = 0.0, height = 0.0
}
let s = Size()

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centery = origin.y + (size.height / 2)
            return Point(x: centerX, y: centery)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 44.0, height: 33.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 14.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
square.size.height

struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var vloume: Double {
        return width * height * depth
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 3.0)
fourByFiveByTwo.vloume


class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            } else {
                totalSteps = oldValue
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360

stepCounter.totalSteps = 560

stepCounter.totalSteps = 10
stepCounter.totalSteps

struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
    var aaaa = 200
    
}

let someStructure = SomeStructure()
print(SomeStructure.storedTypeProperty.characters.count)

print(SomeStructure.storedTypeProperty)


let someClass = SomeClass()
SomeClass.storedTypeProperty

SomeClass.overrideableComputedTypeProperty

someClass.aaaa

SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "ffff"
print(SomeStructure.storedTypeProperty)



struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}
var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
leftChannel.currentLevel = 11
print(leftChannel.currentLevel)

AudioChannel.maxInputLevelForAllChannels = 100

rightChannel.currentLevel = 13
print(rightChannel.currentLevel)
 
*/

/*
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() -> Void {
        count = 0
    }
    func _incrementBy(amount amount: Int, _ numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}

let counter = Counter()
counter.increment()

counter.count
counter.incrementBy(10)
counter.count
counter.reset()
counter.count
//counter._incrementBy(ff: 10, numberOfTimes: 3)
//counter._incrementBy(ff: 33, 2)
counter._incrementBy(amount: 33, 2)

counter.count
//counter._incrementBy(34, numberOfTimes: 2)


struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
}

let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOfX(1.0) {
    print("This point is to the right of the line where x == 1.0")
} else {
    print("ahahahhah")
}


struct Hahah {
    var dd = 10, aa = 30
    mutating func af(x: Double) {
        dd = Int(x)
    }
}

struct Point2 {
    var x = 0.0, y = 0.0
    mutating func moveByx(deltaX: Double, y deltaY: Double) {
        self = Point2(x: x + deltaX, y: y + deltaY)
    }
}


enum TriStateSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
        case .Off:
            self = .Low
        case .Low:
            self = .High
        case .High:
            self = .Off
        }
    }
}
var ovenLight = TriStateSwitch.Low
ovenLight
ovenLight.next()
ovenLight
ovenLight.next()


class SomeClass {
    static var aaa = 100
    static func someTypeMethod() {
        print("someTypeMethod")
    }
}

SomeClass.aaa
SomeClass.someTypeMethod()


struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    static func LevelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.LevelIsUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func completedLevel(level: Int) {
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Argyrios")
player.completedLevel(1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
var player2 = Player(name: "haha")
player2.completedLevel(4)
LevelTracker.highestUnlockedLevel
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")

player = Player(name: "Beto")
if player.tracker.advanceToLevel(6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}
*/

/*
 * 下标脚本
 */

/*
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
threeTimesTable[6]

var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2
numberOfLegs

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns;
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns && column < self.columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValidForRow(row, column: column))
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValidForRow(row, column: column))
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 3, columns: 3)
matrix[1, 2] = 10
matrix[0, 0] = 2

struct Man {
    var a = 10
}

var man = Man(a: 10)
//man[2]
 */

/*
 * 继承
 */

/*
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()
someVehicle.description

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 44.0
bicycle.description

class Tandem: Bicycle {
    var currentNumberofPassengers = 0
    
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberofPassengers = 2
tandem.currentSpeed = 22.0
tandem.description


class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
car.description

class AutomaticCar: Car {
    
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 34.5
automatic.description
*/

/*
 * 构造过程
 */

/*
struct Celsius {
    var temperatureInCelsius: Double
    init(formFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(name: NSString) {
        temperatureInCelsius = 10.9
        print("name \(name)")
    }
}
let boilingPointOfWater = Celsius(formFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
boilingPointOfWater.temperatureInCelsius
freezingPointOfWater.temperatureInCelsius
let name = Celsius(name: "fa")


struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

let nagenta = Color(red: 1.0, green: 1.0, blue: 0.0)
let halfGray = Color(white: 0.5)



struct Celsiusss {
    var temperatureInCelsius: Double = 0.0
    init (fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

let bodyT = Celsiusss(39)


class SurveyQuestion {
    var text: String
    var respone: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like me?")
cheeseQuestion.ask()
cheeseQuestion.respone



struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 10, height: 10))


let centerRect = Rect(origin: Point(x: 4.0, y: 4.0), size: Size(width: 33.0, height: 333.3))

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) whees(s)"
    }
}


let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
bicycle.numberOfWheels

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
//    init() {
//        self.name = "fdsa"
//    }
}

let food = Food()
food.name


class RecipeIngredient: Food {
    var quantity: Int = 0
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
oneMysteryItem.quantity
oneMysteryItem.name

let oneBacon = RecipeIngredient(name: "jack")
oneBacon.quantity
oneBacon.name

let test = RecipeIngredient(name: "fd")
test.quantity


class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) * \(name)"
        output += purchased ? "+++" : "---"
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "jack"),
    ShoppingListItem(name: "Eggs", quantity: 6)
]
breakfastList[0].name = "Orange Juice"
breakfastList[0].purchased = true

for item in breakfastList {
    print(item.description)
}


struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty {
            return nil
        }
        self.species = species
    }
}

let someCreature = Animal(species: "gif")

if let giraffe = someCreature {
    print("an animal was initialized with a species of \(giraffe.species)")
}

let anonymousCreature = Animal(species: "")

if anonymousCreature == nil {
    print("nil nil nil")
}


enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}
let temp = TemperatureUnit.Celsius
let fahrenheitUnit = TemperatureUnit(symbol: "F")
let unknownUnit = TemperatureUnit(symbol: "d")

enum TestEnum : Int {
    case f, g, h
    case hah
}
let testEnum = TestEnum(rawValue: 19)

enum TTTTemperatureUnit: Character {
    case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}
let tttahrenheitUnit = TTTTemperatureUnit(rawValue: "F")



enum TTTemperatureUnit: Character {
    case Kelivin = "K", Celsius = "C", Fahrenheit = "F"
}

let fff = TTTemperatureUnit(rawValue: "F")
let ffff = TTTemperatureUnit.Celsius

class Product {
    let name : NSString!
    init?(name: String) {
        if name.isEmpty {
            return nil
        } else {
            self.name = name
        }
    }
}

class CartItem: Product {
    let quantity: Int!
    init?(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
        if quantity < 1 {
            return nil
        }
    }
}

if let twoSocks = CartItem(name: "sock", quantity: 2) {
    twoSocks.quantity
    twoSocks.name
}

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
    zeroShirts.quantity
    print(zeroShirts)
} else {
    print("nothing")
}

if let oneUnnamed = CartItem(name: "", quantity: 1) {
    print(oneUnnamed.quantity)
} else {
    print("nothing nil")
}


class Document {
    var name: String?
    
    init() {
    }
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}

class AutomaticallyNameDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}

class SomeClass {
    required init() {
    
    }
}
class someSubclass: SomeClass {
    required init() {
        
    }
}


struct Checkerboard {
    let boardColor: [Bool] = {
        var temporayBoard = [Bool]()
        var isBlack = false
        for i in 1...10 {
            for j in 1...10 {
            temporayBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporayBoard;
        
    }()
    
    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
        return boardColor[(row * 10) + column]
    }
}

let boardd = Checkerboard()
print(boardd.squareIsBlackAtRow(0, column: 1))
print(boardd.squareIsBlackAtRow(8, column: 8))

 */

/*
 * 析构过程
 */
/*
struct Bank {
    static var coinsinBank = 10_000
    static func vendCoins(var numberOfConinsToVend: Int) -> Int {
        numberOfConinsToVend = min(numberOfConinsToVend, coinsinBank)
        coinsinBank -= numberOfConinsToVend
        return numberOfConinsToVend
    }
    static func receiveCoins(coins: Int) {
        coinsinBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.vendCoins(coins)
    }
    func winCoins(coins: Int) {
        coinsInPurse += Bank.vendCoins(coins)
    }
    deinit {
        Bank.receiveCoins(coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)

playerOne!.coinsInPurse
Bank.coinsinBank

playerOne!.winCoins(2_000)
playerOne!.coinsInPurse
Bank.coinsinBank
//playerOne = nil
playerOne?.coinsInPurse

*/


/*
 *引用计数
 */
/*
class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?
reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference1 = nil
reference2 = nil


class Person1 {
    let name: String
    init(name: String) {
        self.name = name;
    }
}
*/

/*
 * 可空式调用
 */
/*
class Person {
    var residence: Residence?
}


class Residence {
    var numberOfRooms = 1
}

let john = Person()

let roomCount = john.residence?.numberOfRooms

john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) rooms")
} else {
    print("Unable to retreve the number of rooms.")
}



class Person1 {
    var residence : Residence1?
}

class Residence1 {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
    
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil {
            return buildingNumber
        } else {
            return nil
        }
    }
}

let john1 = Person1()

if let roomCount = john.residence?.numberOfRooms {
    print("John1's residence has \(roomCount) room(s)")
} else {
    print("Unable to retrieve the number of rooms.")
}
let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia road"
john1.residence?.address = someAddress

func printNumberOfRooms() -> Void {
    print("The number of rooms is ()")
}

if john1.residence?.printNumberOfRooms() != nil {
    print("it was possible to print the number of romms.")
} else {
    print("it was not possible to print the number of rooms.")
}

if (john1.residence?.address = someAddress) != nil {
    print("it was possible to set the address.")
} else {
    print("it was not possible to print the number of rooms.")
}

if let firstRoomName = john1.residence?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}

john1.residence?[0] = Room(name: "Bathroom")
let johnsHouse = Residence1()
johnsHouse.rooms.append(Room(name: "Living Room"));
johnsHouse.rooms.append(Room(name: "Kitchen"))
john1.residence = johnsHouse

if let firstRoomName = john1.residence?[0].name {
    print("The first room name is \(firstRoomName)")
} else {
    print("Unable to retrieve the first room name.")
}

var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
testScores["Dave"]?[0] = 91
testScores["Bev"]?[0]++
testScores["Brian"]?[0] = 44
testScores["Brian"] = [444, 444, 333, 111]
testScores["Brian"]?[0] = 323333
testScores


if let johnsStreet = john1.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}

let johnsAddress = Address()
johnsAddress.buildingName = "The Larches"
johnsAddress.street = "Laurel Street"
john1.residence?.address = johnsAddress

if let johnsStreet = john1.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}

if let buildingIdentifier = john1.residence?.address?.buildingIdentifier() {
    print("John's building identifier is \(buildingIdentifier).")
} else {
    print("Unable to buildingIdentifier")
}

if let beginsWithThe = john1.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("John's building identifier begins with \"The\".")
    } else {
        print("John's building identifier does not begin with \"The \".")
    }
}

if ((john1.residence?.address?.buildingIdentifier()?.hasPrefix("Thdae")) != nil) {
        print("John's building identifier begins with \"The\".")
} else {
  print("John's building identifier does not begin with \"The \".")
}
*/

/*
 * 错误处理
 */
/*
enum VendingMachineError: ErrorType {
    case InvalidSelection // 选择无效
    case InsufficientFunds(coinsNeeded: Int) // 金额不足
    case OutOfStock // 缺货
}

throw VendingMachineError.InsufficientFunds(coinsNeeded: 5)
let vendingError = VendingMachineError.InsufficientFunds(coinsNeeded: 2)




struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = ["Candy Bar": Item(price: 12, count: 7), "Chips": Item(price: 10, count: 4), "Pretzels": Item(price: 7, count: 11)]
    var coinsDeposited = 0
    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }
    func vend(itemNamed name: String) throws {
        guard var item = inventory[name] else {
            throw VendingMachineError.InvalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.OutOfStock
        }
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.InsufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        coinsDeposited -= item.price
        item.count -= 1
        inventory[name] = item
        dispenseSnack(name)
    }
}

let favoriteSnacks = ["Alice": "Chips", "Bob": "Licorice", "Eve": "Pretzels"]
func buyFavoriteSnack(persion: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[persion] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}


var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 0
do {
    try buyFavoriteSnack("aa", vendingMachine: vendingMachine)
    print("no try catch")
} catch VendingMachineError.InvalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.OutOfStock {
    print("Out of Stock.")
} catch VendingMachineError.InsufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins")
}



//
//var x = 10
//func someThrowingFunction() thorws -> Int {
//    guard let xx = x else {
//        throw VendingMachineError.OutOfStock
//        return x
//    }
//    return xx
//}
//
//let x = try? someThrowingFunction()
//
//let y : Int?
//
//do {
//    y = try someThrowingFunction()
//} catch {
//    y = nil
//}


//func processFile(filename: String) {
//    if exists(filename) {
//        let file = open(filename)
//        defer {
//            close(file)
//        }
//        while let line = try file.readline() {
//            print("dddd")
//        }
//        
//    }
//}

*/
/*
 * 类型转换
 */
/*
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name;
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [Movie(name: "Casablanca", director: "Michael Curtiz"), Song(name: "Blue Suede Shoes", artist: "Elvis Presley"), Movie(name: "Citizen Kane", director: "Orson Welles"), Song(name: "The One And Only", artist: "Chesney Hawkes"), Song(name: "Never Gonna Give You Up", artist: "Rick Astley")]
library

var movieCount = 0
var songCount = 0
for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}
print("Media library contains \(movieCount) movies and \(songCount) songs")


for item in library {
//    let aa = item as! Movie
    
    if let movie = item as? Movie {
        print("Moive: (moive.name), dir.\(movie.director)")
    } else if let song = item as? Song {
        print("Song:\\ (song.name), by \(song.artist)")
    }
}


let someObjects: [AnyObject] = [
    Movie(name: "3001: A Space Odyssey", director: "Stanley Kubrick"),
    Movie(name: "Moon", director: "Duncan Jones"),
    Movie(name: "Alien", director: "Ridley Scott")
]

for object in someObjects {
    let movie = object as! Movie
    print("Movie, \(movie.name)")
}

for movie in someObjects as! [Movie] {
    print("Movie111 , \(movie.director)")
}


var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14)
things.append("hello")
things.append((2, 44))
things.append(("fdsa", 333))
things.append(Movie(name: "jiac", director: "Jack"))
things.append({(name: String) -> String in "Hello, \(name)"})

things.count


for thing in things {
    switch thing {
    case 0 as Int: {
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
        print("zero as an Int")
        print("fdaslkfdsa")
    }
        break;
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
        print("fff")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Int, Int):
        print("an (x, y) pint at \(x), \(y)")
    case let movie as Movie:
        print("a movie called \(movie.name)")
    case let stringConverter as String -> String:
        print(stringConverter("Michael"))
    default:
        print("someThing else")
    }
}
 
 */

/*
 * 嵌套类型
 */

/*
struct BlackjackCard {
    enum Suit: Character {
        case Spades = "a", Hearts = "b", Diamonds = "c", Clubs = "d"
    }
    
    enum Rank: Int {
        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case jack, Queen, King, Ace
        struct Values {
            let first: Int, second: Int?
        }
        var values: Values {
            switch self {
            case .Ace:
                return Values(first: 1, second: 11)
            case.jack, .Queen, .King:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
        
    }
    
    let rank: Rank, suit: Suit
    var description: String {
        var output = "suit is \(suit.rawValue)"
        output += "value is \(rank.values.first)"
        if let second = rank.values.second {
            output += "or \(second)"
        }
        return output
    }
}

let theAceOfSpades = BlackjackCard(rank: .Ace, suit: .Spades)
print("theAceOfSpades: \(theAceOfSpades.description)")

let heartsSymbol = BlackjackCard.Suit.Hearts.rawValue
*/


