import Cocoa

// Полуоткрытый диапазон (..<)
//  левая граница ..< правая граница
/*
let myRange = 1..<500
// let rangeInt = 1..<5

let someRangeInt: Range<Int> = 1..<10 // явно задан тип
type(of: someRangeInt)
let anotherRangeInt = 51..<59
type(of: anotherRangeInt)
let rangeInt: Range<Int> = 1..<10

let rangeString = "a"..<"z"
let rangeCharacter: Range<Character> = "a"..<"z"
let rangeDouble = 1.0..<5.0

let firstElement = 10
var lastElement = 18
let myBestRange = firstElement..<lastElement

let exampleRange = ..<50

let oneSideRange = ..<5
type(of: oneSideRange)
*/

// Оператор закрытого диапазона (три точки ...)
let myRange = 1...100
type(of: myRange)

// Бесконечный диапазон let myRange = 10...

// Префексная форма оператора
// ... правая граница с включенным последним элементом
let myRangeOne = ...0
let intR = 1...10
intR.count // считате  элементы в диапазоне

let floatR: ClosedRange<Float> = 1.0...2.0
floatR.contains(1.4) // определяет наличие конкретного элемента в диапазоне

let emptyR = 0..<0
emptyR.count
emptyR.isEmpty // определяет наличие элементов в диапазоне

let notEmptyR = 0...0
notEmptyR.count
notEmptyR.isEmpty

let anotherIntR = 20..<34
anotherIntR.lowerBound // указывает значение левой границы
anotherIntR.upperBound // значение правой границы
anotherIntR.min()
anotherIntR.max()

// 5.4 Классификация диапазонов
let rangeOne = ...10
type(of: rangeOne)
let rangeTwo = ..<10
type(of: rangeTwo)

let i = UInt8.min
let range = 1...10
let range2 = 1...10

range == range2


