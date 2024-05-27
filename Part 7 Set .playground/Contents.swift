import Cocoa

// page 163 Usov
let mySet: Set<Int> = [1, 5, 0]
let mySet2 = Set(arrayLiteral: 5, 66, 12)


// синтаксис создание множества
var dishes: Set<String> = ["хлеб", "овощи", "тушенка", "вода"]
var dishesTwo: Set = ["хлеб", "овощи", "тушенка", "вода"]
var members = Set<String>(arrayLiteral: "Энакен", "Оби Ван", "Йода")
var mambersTwo = Set(arrayLiteral: "Энакен", "Оби Ван", "Йода")

// пустое множество
let emptySet = Set<String>()
// множество со значениями
var setWithValues: Set<String> = ["хлеб", "овощи"]
// удаление всех элементов множества
setWithValues = []
setWithValues


// 7.3
var musicStyleSet: Set<String> = []
musicStyleSet.insert("Jazz")
musicStyleSet
// removaAll - удаляет все элементы из множества
// remove(_:) - удаляет конкретьный элемент из множетсва

musicStyleSet = ["Hip-Hop", "Rock", "Country"]
var removeStyleResult = musicStyleSet.remove("Hip-Hop")
musicStyleSet
musicStyleSet.remove("Classic")
musicStyleSet.removeAll()

// 7.5 проверка существования во множестве
musicStyleSet = ["Jaz", "Hip-Hop", "Rock", "Funk"]
musicStyleSet.contains("Funk")
musicStyleSet.contains("Pop")
musicStyleSet.count

// 7.7
// множества с нечетными цифрами
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let differentDigits: Set = [3, 4, 7, 8]

/*
 intersection(_:)  получает все общие элементы
 symmetricDifference(_:)  получает все необщие элемены
 union(_:) получаетвсе элементы обоих множеств
 subtracting(_:) получает разницу элементов
 */
let inter = differentDigits.intersection(oddDigits)
let exclusive = differentDigits.symmetricDifference(oddDigits)
let union = evenDigits.union(oddDigits)
let subtrct = differentDigits.subtracting(evenDigits)

// 7.12
let aSet: Set = [1, 2, 3, 4, 5]
let bSet: Set = [1, 3]
let cSet: Set = [5, 6, 7, 8]

// эквивалентность
let copyOfBSet = bSet
bSet == copyOfBSet
bSet.isSubset(of: aSet) // isSubset - является ли подмножеством
aSet.isSuperset(of: bSet) // является ли надмножеством

// isDisjoint(with:) - определяет, существуют ли во множествах общие элементы, при их отсутствии выводит - true
bSet.isDisjoint(with: cSet)

// isStrictSubset(of:) && isStrictSuperset(of:) определяет, являются мнодества подмножеством или надмножеством не равным указанному множеству
bSet.isStrictSubset(of: aSet)
aSet.isStrictSuperset(of: bSet)

let setOfNums: Set = [1, 10, 2, 5, 12, 23]
let sortedArray = setOfNums.sorted()
sortedArray
type(of: sortedArray)

