import Cocoa

var greeting = "Hello, playground"
// 2.1
let someText = "я учу Свифт"
var orksName = "Ruhard"
var elfsName: String = "Enor"
orksName
elfsName

var str: String
str = "Hello, playground"
print(str)

var variableOne = 23
let variableOneCopy: Int = variableOne
print(variableOneCopy)
variableOne = 25
print(variableOneCopy)
print(variableOne)

// 2.2. Int
var signedNum: Int = -32
let unsignedNum: UInt = 128

let minInt8 = Int8.min
let maxInt8 = Int8.max
let minUInt8 = UInt8.min
let maxUInt8 = UInt8.max

// 2.7 Float Double
let nameFloat: Float = 104.3
let nameDouble: Double = 8.36
let someNumber = 8.36

let res = 1 + 2
// + - * /  %
let procent = 19 % 4

let numOne = 19
let numTwo = 4
let numThree = 3.13
let numFour = 1.1

let sum = numOne + numTwo
let diff = numOne - numTwo
let mult = numOne * numTwo
let qo = numOne / numTwo

let sumD = numThree + numFour
let diffD = numThree - numFour
let multD = numThree * numFour
let qoD = numThree / numFour

let res1 = numOne % numTwo
let res2 = -numOne % numTwo
let res3 = numOne % -numTwo

let firstFloat: Float = 3.14
let secondFloat: Float = 1.01
// операция получения отстатка от деления
let result1 = firstFloat.truncatingRemainder(dividingBy: secondFloat)
let result2 = -firstFloat.truncatingRemainder(dividingBy: secondFloat)
let result3 = firstFloat.truncatingRemainder(dividingBy: -secondFloat)
// метод определения четных чисел - isMultiple(of:)

let numObj = Int.init(2)
// let numObj = Int(2)


let numberInt = 19
let numberDouble = 3.13
let resD = Double(numberInt) * numberDouble
let resI = numberInt * Int(numberDouble)


var count = 19
count  += 5 // count = count + 5

let decimalIteger = 17
let numver = 1_000_000

// Decimal - тип для работы с точными вычислинями

var myWallet: Double = 0
let incomeAfterPperation: Double = 0.1
myWallet += incomeAfterPperation
print(myWallet)
myWallet += incomeAfterPperation
print(myWallet)
myWallet += incomeAfterPperation
print(myWallet)
 
var decimalWallet: Decimal = 0
let income: Decimal = 0.1
decimalWallet += income
print(decimalWallet)
decimalWallet += income
print(decimalWallet)
decimalWallet += income
print(decimalWallet)

// 2.3 String Character

let char: Character = "a" // только один символ
print(char)

let stringOne: String = "Dragon"

let language = "Swift" // String
let version = "5" // String

var emptyString = ""
var anotherEmptyString = String()

// строковй литерал """ """

let longString = """
    Это многострочный
    строковый литерал
    """

let notEmptyString = String("Hello, Troll!")

let someDoubleNumber = 74.22
let someStringNumber = String(someDoubleNumber)

// Объединение строк
let name = "Дракон"
let hello = "Привет, меня зовут \(name)!"
let meters: Double = 10
let text = "Моя длина \(meters * 3.28) фута"
print(hello)
print(text)

// 2.30
let firstText = "Мой вес"
let weight = 12.4
let secondText = " тонны"
let resultText = firstText + String(weight) + secondText
print(resultText)

// оператор сравнения (==)
let firstString = "Swift"
let secondString = "Objektiv-C"
let anotherString = "Swift"
firstString == secondString
firstString == anotherString

// 2.4 Логический тип данных
let isDragon = true
let isKnight: Bool = false
var isDragonPlaton = true
if isDragonPlaton {
    print("Привет, Дракон!")
} else {
        print("Привет, Тролль!")
    }
// Логические операторы НЕ(!a); И(a&&b); ИЛИ(a||b)
let someBool = true
!someBool
someBool

let firstBool = true, secondBool = true, thirdBool = false
let one = firstBool && secondBool
let two = firstBool && thirdBool
let three = firstBool && secondBool && thirdBool

let resultAnatherBool = (secondBool || (firstBool && thirdBool)) && thirdBool

// операторы сравнеия ==; !=; >; <; >= <=

// 2.42 Псевданимы типов
typealias AgeType = UInt8
var maAge: AgeType = 29


typealias TextType = String
typealias WordType = String
typealias CharType = String

let someText1: TextType = "Это текст"
let someWord: WordType = "Cлово"
let someChar: CharType = "Б"

// 2.6
var intVar = 12
let myVar = 3.54
print(type(of: myVar))

// хешируемы и сопостовимые типы данных
let stringForHash = "Строка текста"
let intForHash = 23
let boolForHash = false

stringForHash.hashValue
intForHash.hashValue
boolForHash.hashValue

//2.7 Где используются фундаментальные типы - стр 113 Усов Василий 
