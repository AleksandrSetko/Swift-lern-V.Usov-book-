import Cocoa
// Глава 9. Строка - коллекция символов (String)
// Строка это коллекция (массив, множество, словарь)

let str = "Hello!"
str.count

// test
var arrayOne = [2, 10, 15, 19, 25, 50, 100]


// 9.2
let char: Character = "\u{E9}"
char

let anotherChar: Character = "\u{65}\u{301}"
anotherChar

char == anotherChar

// Графем-кластер
let thumbsUp = "\u{1f44d}"
let blackSkin = "\u{1f3fd}"
let combine = "\u{1f44d}\u{1f3fd}"

let cafeSimple = "caf\u{E9}"
let cafeCombine = "cafe\u{301}"
cafeSimple.count
cafeCombine.count

// 9.3 Строковый индексы
let name = "e\u{301}lastic"
let index = name.startIndex

let firstChar = name[index]
firstChar
type(of: firstChar)

// 9.10
type(of: index)

// 9.11 endIndex ; index(before: )
let indexLastChar = name.endIndex

let lastCharIndex = name.index(before: indexLastChar)
name[lastCharIndex]

// 9.13
let secondCharIndex = name.index(after: name.startIndex)
name[secondCharIndex]

// 9.14 index(_:offsetBy: )
let fourCharIndex = name.index(name.startIndex, offsetBy: 3)
name[fourCharIndex]

name.count
name.unicodeScalars.count

// цепочка вызовово свойств и методов

//9.16
let abc = "qwertywqeoqpoewiqpowieopqw"
let firstCharIndex = abc.startIndex
let fourCharIndex2 = abc.index(firstCharIndex, offsetBy: 3)

let subAbc = abc[firstCharIndex...fourCharIndex2]
type(of: subAbc)
type(of: String(subAbc))

let subStr = abc[fourCharIndex2...]
subStr


