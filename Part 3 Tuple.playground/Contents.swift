import Cocoa
// Tuple - кортежи (значения различных типов)
/*
let myProgramStatus = (200, "In Work", true)
myProgramStatus

let tuple1 = (200, "In Work", true)
let tuple2 = (true, "On Work", 200)
print(type(of: tuple1) == type(of: tuple2))
// яный тип
let floatStatus: (Float, String, Bool) = (200.2, "In Work", true)
floatStatus

typealias numberType = Int
let numbersTuple: (Int, Int, numberType, numberType) = (0,1,2,3)
numbersTuple

// Взаимодействие с элиментами кортежа

let (statusCode, statusText, statusConnect) = myProgramStatus
print("Код ответа - \(statusCode)")
print("Код ответа - \(statusText)")
print("Код ответа - \(statusConnect)")

var (myName, myAge) = ("Троль", 140)
print("Мое имя \(myName), и мне \(myAge) лет")

let (statusCode, _, _) = myProgramStatus

// доступ к элементам котежа через индексы
print("Код ответа - \(myProgramStatus.0)")
print("Текст ответа - \(myProgramStatus.1)")
print("Связь с сервером - \(myProgramStatus.2)")
*/

// Доступ к элементам кортежа через имена
let statusTuple = (statusCode: 200, statusText: "In Work", statusConnect: true)
print("Код ответ - \(statusTuple.statusCode)")

let anotherStatusTuple: (statusCode: Int, statusText: String, statusConnect: Bool) = (200, "In Work", true)
print(anotherStatusTuple.statusCode)

var myFirstTuple: (Int, String) = (0, "0")
let mySecondTuple = (100, "Код")
myFirstTuple = mySecondTuple
print(myFirstTuple)

var someTuple = (200, true)
someTuple.0 = 404
someTuple.1 = false
print(someTuple)

// сравнение кортежей



/*
отступление от темы
 for i in 1...10 {
    print(i)
}
*/
