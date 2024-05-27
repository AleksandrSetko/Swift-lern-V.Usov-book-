import Cocoa

let dictionary = ["one":"один", "two":"два", "three":"три"]
// dictionary(dictionaryLiteral: (100, "Сто"), (200, "Двести", (300, "Триста"))
// базовая коллекция кортежей (пар значений)
let baseCollection = [(2,5), (3,6), (1,4)]
// создание словаря на основании базовой коллекции
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)

// 8.3
let nearestStarNames = ["Proxima Centauri", "Alpha Centauri A", "Alpha Centauri B"]
let nearestStarDistance = [4.24, 4.37, 4.37] // Array

// создание словаря через функцию zip(_:,_:)
let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(nearestStarNames, nearestStarDistance))

starDistanceDict

// 8.4
let codeDesc = [200: "success", 300: "warning", 400: "error"]
type(of: codeDesc)

let dictOne: Dictionary<Int,Bool> = [100: false, 200: true, 400: true]
let dictTwo: [String:String] = ["Jonh": "Dave", "Eleanor": "Green"]

// 8.5 Взаимодействие с элементами словаря
var countryDict = ["RUS": "Росиия", "BEL": "Белорусия", "UKR": "Украина"]
var countryName = countryDict["BEL"]
countryName
countryDict["RUS"] = "Российская Федерация"
countryDict

// изменение возможно через метод updateValue(_:forKey:)
var oldValueOne = countryDict.updateValue("Эстония", forKey: "EST")
oldValueOne

// создаем новый элемент
countryDict["TUR"] = "Турция"
countryDict

// удаление элемента - либо nil либо removeValue(forKey:)
countryDict["TUR"] = nil
countryDict.removeValue(forKey: "BEL")
countryDict

// Пустой словарь
let emptyDictionary: [String:Int] = [:]
let anotherEmptyDictionary = Dictionary<String,Int>()

// можно все удалить и таким методом [:]
var birthYears = [1991: ["John", "Ann", "Vasiliy"], 1993: ["Alex", "Boris"]]
birthYears = [:]
birthYears

// Базовые
var someDictionary = ["One": 1, "Two": 2, "Three": 3]
someDictionary.count

var emptyDict: [String:Int] = [:]
emptyDict.count
emptyDict.isEmpty

// Получение всех ключей и значений
let keys = countryDict.keys
type(of: keys)
keys

let values = countryDict.values
type(of: values)
values

// преобразование
let keysSet = Set(keys)
keysSet
let valuesArray = Array(values)
valuesArray

// 8.6 Вложенные типы



