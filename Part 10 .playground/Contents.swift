import Cocoa
// Утверждение (assertions) / assert(_:_:)

let strName = "Дракон"
let strYoung = "молод"
let strOld = "стар"
let strEmpty = " "

var dragonAge = 230
assert(dragonAge <= 235, strName + strEmpty + strOld)
assert(dragonAge >= 225, strName + strEmpty + strYoung)
print("Программа успешно завершила свою работу")

// 10.2 (if) оператор услуовия
// синтаксис - сокращенный
var logicVar = true
if logicVar == true {
    print("Переменная logicVar истинна")
}

if logicVar {
    print("Переменная logicVar истинна")
}

logicVar = false
if logicVar == false {
    print("Переменная logicVar ложна")
}

if !logicVar {
    print("Переменная logicVar вновь ложна")
}

// Стандартный синтаксис оператора if
if logicVar {
    print("Переменная logicVar истинна")
} else {
    print("Переменная logicVar ложна")
}

let a = 1054
let b = 952
if a+b > 1000 {
    print("Сумма больше 1000")
} else {
    print("Сумма меньше или равна 1000")
}

// и(&&) или(||)
// 10.10
var firstLogicVar = true
var secondLogicVar = false
if firstLogicVar || secondLogicVar {
    print("Одна или две переменные истинны")
} else {
    print("Обе переменные ложны")
}
// 10.11
if firstLogicVar || secondLogicVar {
    if firstLogicVar && secondLogicVar {
        print("Обе переменные истины")
    } else {
        print("Только одна из переменных истина")
    }
} else {
    print("Обе переменные ложны")
}
// Расширенный синтаксис

if firstLogicVar && secondLogicVar {
    print("Обе переменные истины")
} else if firstLogicVar || secondLogicVar {
    print("Одна из переменных истина")
} else {
    print("Обе переменные ложны")
}
// 10.15
var tenantCount = 6
var rentPrice = 0
if tenantCount < 5 {
    rentPrice = 1000
} else if tenantCount >= 5 && tenantCount <= 7 {
    rentPrice = 800
} else {
    rentPrice = 500
}
var allPrice = rentPrice * tenantCount

if (..<5).contains(tenantCount) {
    rentPrice = 1000
} else if (5...7).contains(tenantCount) {
    rentPrice = 800
} else if (8...).contains(tenantCount) {
    rentPrice = 500
}

// Тернарный оператор условия  let y = (x > 100 ? 100 : 50)
let a1 = 1
let b1 = 2
a1 <= b1 ? print("А меньше или равно В") : print("А больше В")

// 10.18
var height = 180
var isHeader = true
let rowHeight = height + (isHeader ? 20 : 10)
rowHeight

let a2 = Int.random(in: 1...100)
let b2 = Int.random(in: 1...100)

if a2 > 50 && b2 > 50 {
    print("a and b > 50")
} else {
    print("Одна или обе переменные меньше 50")
}

if a2 > 50, b2 > 50 {
    print("a and b > 50")
} else {
    print("Одна или обе переменные меньше 50")
}
// 10.19
let userMark = 4
if userMark == 1 {
    print("Еденица на экзмаене! Это ужасно!")
} else if userMark == 2 {
    print("С двойкой ты останешься на второй год!")
} else if userMark == 3 {
    print("Ты плохо учил материал в этом году!")
} else if userMark == 4 {
    print("Нелохо, но могло быть и лучше!")
} else if userMark == 5 {
    print("Бесплатное место в университете тебе обеспечено!")
} else {
    print("Переданы некорректные данные об оценке")
}

// switch

switch userMark {
    case 1,2:
        print("Экзамен не сдан")
    case 3:
        print("Необходимо вполнить дополнительное задание")
    case 4,5:
        print("Экзамен сдан")
    default:
        print("Указана некорректная оценка")
}

// 10.20
let message: String
switch userMark {
case 1:
    message = "Единица на экзамене это ужасно!"
case  2:
    message = "С двойкой ты останешься на второй год!"
case 3:
    message = "Ты плохо учил материал в этом году!"
case 4:
    message = "Неплохо, но могло быть и лучше!"
case 5:
    message = "Бесплатное место в университете тебе обеспечено"
default:
    message = "Переданы некорректные данные об оценке"
}
print(message)
// 10.21 Диапазоны в операторе switch
let userMarkTwo = 4
switch userMarkTwo {
case 1..<3:
    print("Экзамиен не здан")
case 3:
    print("Требуется решение дополнительного задания")
case 4...5:
    print("Экзамен сдан")
default:
    assert(false, "Указана некорректная оценка")
}


// Кортежи в операторе switch
let answer: (code: Int, message: String) = (code: 399, message: "Page not found")

switch answer {
case (100..<400, _):
    print(answer.message)
case (400..<500, _):
    assert(false, answer.message)
default:
    print("Получен некорректный ответ")
}

// 10.24
/*
 Вольер 1 для зеленных драконов с массой не менее двух тонн
 Вольер 2 для красных драконов с массой менее двух тонн
 Вольер 3 для зеленых и красных драковно с массой более двух тонн
*/

let dragonCharacteristics: (color: String, weight: Float) = ("red", 3.0) // 1.4
switch dragonCharacteristics {
case ("green", 0..<2):
    print("Вольер № 1")
case ("red", 0..<2):
    print("Вольер № 2")
case ("green", 2...), ("red", 2...):
    print("Вольер № 3")
default:
    print("Дракон не может быть принят в стаю")
}

//10.25
var dragonCount = 3
switch dragonCharacteristics {
case ("green", 0..<2):
    print("Вольер № 1")
case ("red", 0..<2):
    print("Вольер № 2")
case ("green", 2...) where dragonCount < 5,
    ("red", 2...) where dragonCount < 5:
    print("Вольер № 3")
default:
    print("Дракон не может быть принят в стаю")
}

//: Интересная часть
// 10.26 деление массы на 1 без остатка
dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0
// 10.27 связывание значений
switch dragonCharacteristics {
case ("green", 0..<2):
    print("Aviary # 1")
case ("red", 0..<2):
    print("Aviary # 2")
case ("green", 2...) where
    dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0 && dragonCount < 5,
    ("red", 2...) where
    dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0 && dragonCount < 5:
    print("Aviary # 3")
default:
    print("A dragon cannot be accepted into a pack")
}
// связывание
switch dragonCharacteristics {
case ("green", 0..<2):
    print("Aviary # 1")
case ("red", 0..<2):
    print("Aviry # 2")
    case ("green", let weight) where
    weight > 2 && dragonCount < 5,
    ("red", let weight) where
    weight > 2 && dragonCount < 5:
    print("Aviary # 3")
default:
    print("A dragon cannot be accepted into a pack")
}
// Связывание сразу двух параметров
switch dragonCharacteristics {
case ("green", 0..<2):
    print("Aviary # 1")
case ("red", 0..<2):
    print("Aviary # 2")
case let (color, weight) where
    (color == "green" || color == "red")
    && weight.truncatingRemainder(dividingBy: 1) == 0
    && dragonCount < 5:
    print("Aviary # 3. Weight dragon is \(weight) tons")
default:
    print("A dragon cannot be accepted into a pack")
}

// Оператор break in switch-case
/*
 Объявите две константы a и b типа Double и проинициализируйте им произвольные значения.
 Рассчитайте среднее значение a и b и сохранить результат в константе типа Float с именем average.
 */
let aTwo = 1.2
let bTwo = 2.3
let average: Float = Float(aTwo + bTwo)/2
print(average) // лирическое отступление

//10.30 break
let someInt = 12
switch someInt {
case 1...:
    print("Bigger 0")
case ..<0:
    print("Smoller 0")
default:
    break
}

// 10.31
let level: Character = "B"
switch level {
case "A":
    print("Switch off electric device")
    fallthrough // принудительный переход к следующему блоку кода
case "B":
    print("Clouse all dors and windows")
    fallthrough
case "C":
    print("Keep calm")
default:
    break
}
// Оператор повторения while repeat while 10.4
// Цикличность кода !!!!
var i = 1
var resultSum = 0
while i <= 10 {
    resultSum += i
    i += 1
}
resultSum

var y = 1
var result = 0
repeat {
    result += y
    y += 1
} while y <= 10

// 10.34

var x = 0
var sum = 0
while x <= 10 {
    x += 1
    if x % 2 == 1 {
        continue
    }
    sum += x
}
sum

// 10.35
let lastNum = 54
var currentNum = 1
var sumOfInts = 0
while currentNum <= lastNum {
    sumOfInts += currentNum
    if sumOfInts > 450 {
        print("The vault is full. The last processed number - \(currentNum)")
        break
    }
    currentNum += 1
}

// оператор повторения for
 

//: for
let numArray: Array<Int> = [1,2,3,4,5,]
var resultArray: Int = 0
for number in numArray {
    resultArray += number
}
print(resultArray)

// 10.28 диапазон в цикл
for i in 1...5 {
    print(i)
}

for i in "Swift" {
    print(i)
}

// внешняя переменная не влияет на одноменную переменную в теле цикла

var myChar = "a"
let myString = "Swift"
for myChar in myString {
    let myString = "Char is"
    print("\(myString) \(myChar)")
}


for _ in 1...3 {
    print("Повторяющаяся строка")
}

// 10.41 итерации в Dictionary
var countriesAndBlocks = ["Россия": "СНГ", "Франсция": "ЕС"]
for (countryName, orgName) in countriesAndBlocks {
    print("\(countryName) вступила в \(orgName)")
}

// Листинг 10.42 используя нижнее подчеркивание мы игнорируем один из параметров Словаря
for (countryName, _) in countriesAndBlocks {
    print("Страна - \(countryName)")
}
for (_, orgName) in countriesAndBlocks {
    print("Организация - \(orgName)")
}

// Listing 10.43 работ только с ключами Словаря через свойства keys
for countryName in countriesAndBlocks.keys {
    print("страна - \(countryName)")
}

for orgName in countriesAndBlocks.values {
    print("организация - \(orgName)")
}

// Listing 10.44
print("A few facts about me:")
let myMusicStyle = ["Rock", "Jaz", "Pop"]
for (index, musicName) in myMusicStyle.enumerated() {
    print("\(index+1). I like \(musicName)")
}

