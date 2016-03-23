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


