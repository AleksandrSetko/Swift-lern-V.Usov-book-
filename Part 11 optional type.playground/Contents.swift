import Cocoa

// nil
let possibleString = "1945"
let convertPossibletString = Int(possibleString)

let unpossibleString = "Одна тысяча сто десять"
let convertUnpossibleString = Int(unpossibleString)

type(of: convertPossibletString)
type(of: convertUnpossibleString)

// явне объявление типа данных
let optionalChar: Optional<Character> = "a"
var xCoordinate: Int? = 12
xCoordinate = nil


var tuple: (code: Int, message: String)? = nil
tuple = (404, "Page not found")

let tupleWithoptelements: (Int?, Int) = (nil, 100)
tupleWithoptelements.0
tupleWithoptelements.1



// 11.2 Извлечение опционального значения !
var optVar: Int? = 12
var intVar = 34
let resultSum = optVar! + intVar
type(of: optVar!)


var wrapInt: Double! = 3.14
wrapInt + 0.12

// Проверка наличия значения в опционале
//listing 11.14
let optOne: UInt? = nil
let optTwo: UInt? = 32

optOne != nil
optTwo != nil

// listing 11.15
var fiveMarkCount: Int? = 8
var allCakesCount = 0;

if fiveMarkCount != nil {
    let cakeForEachFiveMark = 2
    allCakesCount = cakeForEachFiveMark * fiveMarkCount!
}
allCakesCount

// Опциональное связывание
let userLogin: String? = "Aleksandr"
if let userName = userLogin {
    print("Имя: \(userName)")
} else {
    print("Имя не введено")
}

// listing 11.17
var pointX: Int? = 10
var pointY: Int? = 3

if let _ = pointX, let _ = pointY {
    print("Точка установлена на плоскости")
}


// 11.5 Опциональное связывание как часть оптимизации кода

var coinsInNewChest = "140"
var allCoinsCount = 1301
if Int(coinsInNewChest) != nil {
    allCoinsCount += Int(coinsInNewChest)!
} else {
    print("У дракона отсутствует золото")
}

// listing 11.21
var coins = Int(coinsInNewChest)

if coins != nil {
    allCoinsCount += coins!
} else {
    print("У дракона отсутствует золото")
}
if let coins = Int(coinsInNewChest) { // лучшее решение!
    allCoinsCount += coins
} else {
    print("У дракона отсутствует золото")
}

//let array = [2, 5, 6, 7, 9 ,1]
//var i = 0
//var max = 0
//for i in 0 ..< array.count {
//    if array[i] > max {
//        max = array[i]
//    }
//}
//print(max)

//let array = [2, 5, 6, 7, 9 ,1]
//var max = 0
//for i in array {
//    if i > max {
//        max = i
//    }
//}
//print(max)



// Задача из Семинара № 3

let array = [1,2,3,4,7,0,90,10]
let a = 0
var res = false

for i in array {
    if i == a {
      res = true
    }
}

res ? print("Yes") : print("No") // тернарное выражение 



// задачка
let arr3 = [0, 4, 5, 10, 120, -4, -3]
for i in arr3 {
    if i % 2 == 0 && i >= 0 {
        print(i)
    }
}

// задачка
//let arr4 = [0, 4, 5, 10, 200, -4, -3]
//var i = 0
//var max = 0
//while i < arr4.count {
//    if arr4[i] > max {
//        max = arr4[i]
//    }
//    i += 1
//}
//print(max)
//print(arr4.count)


// Задачи после 3 семинара/ сложение пар массива 1 и последний  2 и предпоследний и так далее
let firstArray = [-10, -5, -7, -2, 0, 1, 4, 7, 10]
var secondArray: [Int] = []

for i in 0..<(firstArray.count / 2) {
    var resault = firstArray[i] * firstArray[firstArray.count - i - 1]
    secondArray.append(resault)
}


