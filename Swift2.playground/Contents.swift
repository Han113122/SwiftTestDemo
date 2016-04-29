//: Playground - noun: a place where people can play

import UIKit

/*
 * 扩展
 */
/*
extension Double {
    var km : Double {
        return self * 1000.0
    }
    var m : Double {
        return self;
    }
    var cm : Double {
        return self / 100.0
    }
    var mm : Double {
        return self / 1000.0
    }
    var ft : Double {
        return self / 3.28084
    }
}

let oneInch = 34.3.km
oneInch
let threeFeet = 3.ft

let aMarathonn = 42.km + 195.m
print("A marathon is \(aMarathonn) meters long")


struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}
let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let rect1 = Rect(center: Point(x: 1.0, y: 3.0), size: Size(width: 22, height: 22))
let rect2 = Rect(origin: Point(x: 11, y: 0.0), size: Size(width: 334.km, height: 33))


extension Int {
    func repetitions(task: () -> ()) {
        for _ in 0..<self {
            task()
        }
    }
}
3.repetitions {
    print("Goodbye!")
}

2.repetitions { 
    print("fd")
}

extension Double {
    func hahaha(task: Double -> Double) {
        print("\(task(self))");
    }
    func aaaa(task: (number : Double) -> ()) {
        task(number: self)
    }
}

3.3.hahaha ({ (double) -> Double in
   return double
})

444.3.aaaa { (number) in
    print(number)
}

extension Int {
    mutating func square() {
        self = self * self
    }
}

var someInt = 3
someInt.square()


extension Int {
    subscript(var digitIndex: Int) -> Int {
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10
            digitIndex -= 1
        }
        return (self / decimalBase) % 10
    }
}

499494944949[0]
443243904394[3]


extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
}
2.kind


func printIntegerKinds(numbers : [Int]) {
    for number in numbers {
        switch number.kind {
        case .Negative:
            print("-")
        case .Zero:
            print("0")
        case .Positive:
            print("+")
        }
    }

    let aa = 10
    
    print("%p", aa)
}
printIntegerKinds([1, 3, 4, -13, 344, 0442, -3232, -323, 034])
*/
//let a = 11
//print(unsafeAddressOf(a))

/*
 * 协议
 */
/*
protocol SomeProtocol {
    var mustBeSettable: Int {get set}
    var doesNotNeedToBeSettable: Int {get}
}

protocol AnotherProtocol {
    static var someTypeProperty: Int {set get}
}

protocol FulllyNamed {
    var fullName: String {get}
}

struct Person: FulllyNamed {
    var fullName: String
}

let john = Person(fullName: "John Appleseed")
john.fullName


class Starship: FulllyNamed {
    var prefix : String?
    var name : String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + "" : "") + name
    }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
ncc1701.fullName


protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 13000.0
    let a = 4555.0
    let c = 3030303.0
    func random() -> Double {
        lastRandom = (lastRandom * a + c) % m
        return lastRandom / m
    }
}

let generator = LinearCongruentialGenerator()
print("Here's random number: \(generator.random())")


generator.random()
generator.random()


protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case Off, On
    mutating func toggle() {
        switch self {
        case .Off:
            self = .On
        case .On:
            self = .Off
        }
    }
}

var lightSwitch = OnOffSwitch.Off
lightSwitch.toggle()

protocol SomeProtocola {
    init()
}
class SomeSuperClass {
    init() {
        
    }
}

class SomeSubClass: SomeSuperClass, SomeProtocola {
    let name: String
    override required init() {
        name = "jack"
    }
}

class Diceaaaa {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var d6 = Diceaaaa(sides: 6, generator: LinearCongruentialGenerator())
for _ in 1...5 {
    print("Random dice roll is \(d6.roll())")
}


protocol  DiceGame {
    var dice: Diceaaaa {get}
    func play()
}

protocol DiceGameDelegate {
    func gameDidStart(game: DiceGame)
    func game(game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
    func gameDidEnd(game: DiceGame)
}

class SnakesAndLadders: DiceGame {
    let finalSquare = 25
    let dice = Diceaaaa(sides: 6, generator: LinearCongruentialGenerator())
    var square = 0
    var board: [Int]
    init() {
        board = [Int](count:finalSquare + 1, repeatedValue:0)
        board[03] = +08; board[06] = -11; board[09] = 9; board[10] = 2;
        board[14] = -10; board[19] = -11; board[22] = -2; board[24] = -8
    }
    var delegate : DiceGameDelegate?
    func play() {
        square = 0
        delegate?.gameDidStart(self)
        gameLoop: while square != finalSquare {
            let diceRoll = dice.roll()
            delegate?.game(self, didStartNewTurnWithDiceRoll: diceRoll)
            switch square + diceRoll {
            case finalSquare:
                break gameLoop
            case let newSquare where newSquare > finalSquare:
                continue gameLoop
            default:
                square += diceRoll
                square += board[square]
                
            }
        }
        delegate?.gameDidEnd(self)
    }
}


class DiceGameTracker: DiceGameDelegate {
    var numberOfTurns = 0
    func gameDidStart(game: DiceGame) {
        numberOfTurns = 0
        if game is SnakesAndLadders {
            print("Started a new game of Snakes and Ladders")
        }
        print("The game is using a\(game.dice.sides)-sided dice")
    }
    func game(game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int) {
        print("Rolled a \(diceRoll)")
    }
    func gameDidEnd(game: DiceGame) {
        print("The game lasted for \(numberOfTurns)")
    }
}

let tracker = DiceGameTracker()
let game = SnakesAndLadders()
game.delegate = tracker
game.play()


protocol TextRepressentable {
    var textualDescription: String {get}
}

extension Diceaaaa: TextRepressentable {
    var textualDescription : String {
        return "A \(sides)-sided dice"
    }
}

d6.textualDescription


struct Hamster {
    var name: String
    var textualDescription: String {
        return "A hamster named \(name)"
    }
}
extension Hamster: TextRepressentable {}

let simonTheHamster = Hamster(name: "Simon")
let somethingTextRepresentable: TextRepressentable = simonTheHamster
print(somethingTextRepresentable.textualDescription)




let things: [TextRepressentable] = [simonTheHamster]


for thing in things {
    print(thing.textualDescription)
}


protocol InheritingProtocol: SomeProtocol, AnotherProtocol {
    
}

protocol PrettyTextRepresentable: TextRepressentable {
    var prettyTextTualDescription: String {get}
}

extension SnakesAndLadders: PrettyTextRepresentable {
    var prettyTextTualDescription: String {
        var output = "fdsfsda" + ":\n"
        for index in 1...finalSquare {
            switch board[index] {
            case let ladder where ladder > 0:
                output += "0"
            case let snake where snake < 0:
                output += "1"
            default:
                output += "2"
            }
        }
        return output
    }
    var textualDescription: String {
        return "fdaklfdsajl"
    }
}
print(game.prettyTextTualDescription)


protocol Named {
    var name: String {get}
}
protocol Aged {
    var age: Int {get}
}


struct PersonStruct: Named, Aged {
    var name: String
    var age: Int
}

func wishHappyBirthday(celebrator: protocol<Named, Aged>) {
    print("Happy birthday \(celebrator.name) - you're \(celebrator.age)!")
}



let brithdayPerson = PersonStruct(name: "Nalcole", age: 39)
wishHappyBirthday(brithdayPerson)


protocol HasArea {
    var area: Double {get}
}

class Circle: HasArea {
    let pi = 3.144434390
    var radius: Double
    var area: Double {
        return pi * radius * radius
    }
    init(radius: Double) {
        self.radius = radius
    }
}
class Country: HasArea {
    var area: Double
    init(area: Double) {
        self.area = area
    }
}


class Animal {
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

let objects: [AnyObject] = [
    Circle(radius: 2.0),
    Country(area: 133333),
    Animal(legs: 4)
]


for object in objects {
    if let objectWithArea = object as? HasArea {
        print("Area is \(objectWithArea.area)")
    } else {
        print("Something that doesn't have an area")
    }
}

@objc protocol CounterDataSource {
    optional func incrementForCount(count: Int) -> Int
    optional var fixedIncreMent: Int {get}
}

@objc protocol aaa {
    optional var aaaaaaaa: Int {get}
}


extension PrettyTextRepresentable {
    var prettyTextTualDescription : String {
        return textualDescription
    }
}

extension CollectionType where Generator.Element: PrettyTextRepresentable {
    var textualDescription: String {
        let itemsAsText = self.map{$0.textualDescription}
        return "[" + itemsAsText.joinWithSeparator(",") + "]"
    }
}

*/


/*
 * 泛型
 */
/*
func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 109
swapTwoInts(&someInt, &anotherInt)
print("someInt is \(someInt)   anotherInt is \(anotherInt)")


func swapTwoStrings(inout a: String, inout _ b: String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var aa = "abc"
var bb = "def"

swapTwoStrings(&aa, &bb)
print("aa is " + aa + " bb is " + bb)


func swapTwoValues<T>(inout a: T, inout _ b: T) {
    let tempA = a
    a = b
    b = tempA
}

var aaa = "aaaaa", bbb = "bbbbb"
swapTwoValues(&aaa, &bbb)
print(aaa + "    " + bbb)


struct IntStack {
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var stackOfString = Stack<String>()
stackOfString.push("uno")
stackOfString.push("dos")
stackOfString.push("tres")
stackOfString.push("cuatro")

let fromTheTop = stackOfString.pop()


extension Stack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

if let topItem = stackOfString.topItem {
    print("The top item on the stack is \(topItem).")
}


func findStringIndex(array: [String], _ valueToFind:String) -> Int? {
    for (index, value) in array.enumerate() {
        if value == valueToFind {
            return index
        }
    }
    for (index, value) in array.enumerate() {
        print("\(value) + \(index)")
    }
    
    return nil
}

let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
if let foundIndex = findStringIndex(strings, "llama") {
    print("The index of llama is \(foundIndex)")
} else {
    print("nil")
}

func findIndex<T: Equatable>(array: [T], _ valueToFind: T) -> Int? {
    for (index, value) in array.enumerate() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let doubleIndex = findIndex([3.1332, 0.04, 0444.4, 33], 33)

let stringIndex = findIndex(["Mike", "Malcolm", "Andrea"], 2)

protocol Container {
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int {get}
    subscript(i: Int) -> ItemType {get}
}

struct Int11Stack: Container {
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
    typealias ItemType = Int
    mutating func append(item: ItemType) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}


struct Stack11<T>: Container {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func append(item: T) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> T {
        return items[i]
    }
}


func allItemsMacth<C1: Container, C2: Container where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>(someContainer: C1, anotherContainer: C2) -> Bool {
    if someContainer.count != anotherContainer.count {
        return false
    }
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    return true
}

extension Array : Container {}

var stackOfString11 = Stack11<String>()
stackOfString11.push("uno")
stackOfString11.push("dos")
stackOfString11.push("tres")
var arrayOfStrings = ["uno", "dos", "tre"];
if allItemsMacth(stackOfString11, anotherContainer: arrayOfStrings) {
    print("All items match.")
} else {
    print("Not all items match")
}

 */


/*
 * 访问控制
 */

/*
 
//public class SomePublicClass {
//
//}
//
//internal class SomeInternalClass {
//}
//
//private class SomePrivateClass {
//}

public var somePublicVariable = 0
internal let someInternalConstant = 0
private func somePrivateFunction() {}


public class SomePublicClass {
    public var somePublicProperty = 0
    var someInternalProperty = 0
    private func somePrivateMethod() {
    }
}

class SomeInternalClass {
    var someInternalProperty = 0
    private func somePrivateMethod() {
    }
}

private class SomePrivateClass {
    var somePrivateProperty = 0
    func somePrivateMethod() {}
}


private func someFunctionaaa() -> (SomeInternalClass, SomePrivateClass) {
    return (SomeInternalClass(), SomePrivateClass())
}

private enum CompassPoint {
    case North
    case South
    case East
    case West
  private func aaa() {
        print("aaa")
    }
}

public class A {
    private func someMethod() {}
}

internal class B: A {
    internal override func someMethod() {
        
    }
}

internal class C {
    
}

internal class D : C {
    
}

public class E {
    private func SomeMethod() {}
}

class F: E {
    internal override func SomeMethod() {
        super.SomeMethod()
    }
}

class Test {
    internal var a = "a"
}

private var privateInstance = SomePrivateClass()

struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
    var testString : String {
        return "abc"
    }
}

var tarck = TrackedString()

var stringToEdit = TrackedString()
stringToEdit.value = "This string will be tracked."
stringToEdit.value += "This edit will increment numberOfEdits."
stringToEdit.value += "So will this one."
print("The number of edits is \(stringToEdit.numberOfEdits)")


public struct TrackedString111 {
    public private(set) var numberOfEdits = 0
    public var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
    public init() {}
}

let t = TrackedString111()
*/

/*
 * 高级运算符
 */

/*
let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits

let firstSixBits: UInt8 = 0b11111100
let lastSixBits: UInt8 = 0b00111111
let middleFourBits = firstSixBits & lastSixBits

let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110
let combinedbits = someBits | moreBits

let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits = firstBits ^ otherBits


struct Vector2D {
    var x = 0.0, y = 0.0
}
func +(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

let vector = Vector2D(x: 3.0, y: 2.0)
let anotherVector = Vector2D(x: 2.0, y: 4.0)

let combinedVector = vector + anotherVector
combinedVector.y

prefix func - (vector: Vector2D) -> Vector2D {
    return Vector2D(x: -vector.x, y: -vector.y)
}

let positive = Vector2D(x: 3.0, y: 4.0)
let negative = -positive
let alsoPositive = -negative


func += (inout left: Vector2D, right: Vector2D) {
    left = left + right
}

var original = Vector2D(x: 1.0, y: 2.0)
let vectorToAdd = Vector2D(x: 3.0, y: 4.0)
original += vectorToAdd

original.x
original.y

postfix func ++(inout vector: Vector2D) -> Vector2D {
    vector += Vector2D(x: 1.0, y: 1.0)
    return vector
}

var toIncrement = Vector2D(x: 3.0, y: 4.0)
let afterIncrement = toIncrement++
afterIncrement.x
afterIncrement.y
toIncrement.x

struct aaa {
    
}

let a = aaa()
let b = aaa()
var c = aaa()

func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}

func != (left: Vector2D, right: Vector2D) -> Bool {
    return !(left == right)
}

let twoThree = Vector2D(x: 2.0, y: 3.0)
let anotherTwoThree = Vector2D(x: 2.0, y: 3.0)
if twoThree == anotherTwoThree {
    print("These two vectors are equivalent.")
} else {
    print("These two vectors are not not not not equivalent.")
}


prefix operator +++ {}

prefix func +++(inout vector: Vector2D) -> Vector2D {
    vector += vector
    return vector
}

var toBeDoubled = Vector2D(x: 2.0, y: 3.0)
let afterDoubling = +++toBeDoubled
afterDoubling.x
afterDoubling.y


infix operator +- {associativity left precedence 140}
func +-(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

let firstVector = Vector2D(x: 1.0, y: 2.0)
let secondVector = Vector2D(x: 3.0, y: 4.0)
let plusMinusVector = firstVector +- secondVector

plusMinusVector.x
plusMinusVector.y

 */

/*
 * 特性
 */

class SomeBaseClass {
    class func printClassName() {
        print("SomeBaseClass")
    }
}

class SomeSubClass: SomeBaseClass {
    override class func printClassName() {
        print("SomeSubClass")
    }
}

let someInstance: SomeBaseClass = SomeSubClass()

someInstance.dynamicType.printClassName()

someInstance.dynamicType
someInstance.self
SomeSubClass.self
SomeBaseClass.self

if someInstance.dynamicType === someInstance.self {
    print("YES")
} else {
    print("NO")
}


class AnotherSubClass: SomeBaseClass {
    let string: String
    required init(string: String) {
        self.string = string
    }
    override class func printClassName() {
        print("AnotherSubClass")
    }
}
let metatype: AnotherSubClass.Type = AnotherSubClass.self
let anotherInstance = metatype.init(string: "some String")

anotherInstance

let fl: Float = 0.4
fl.dynamicType

//try 1 + 12


func logFunctionName(string: String = #function) {
    print(string)
}

func myFunction() {
    logFunctionName()
}

myFunction()
logFunctionName()

func aaaa() {
    print()
}

aaaa()

public class Listitem {
    public var text: String
    public var isComplete: Bool
    private(set) var UUID: NSUUID
    public init(text: String, completed: Bool, UUID: NSUUID) {
        self.text = text;
        self.isComplete = completed
        self.UUID = UUID
    }
    func refreshIdentity() {
        self.UUID = NSUUID()
    }
    public func isEqual(object: AnyObject?) -> Bool {
        if let item = object as? Listitem {
            return self.UUID == item.UUID
        }
        return false
    }
}


func simpleMax<T: GeneratorType, U: GeneratorType where T.Element == U.Element>(x: T, _ y: U) {

}

