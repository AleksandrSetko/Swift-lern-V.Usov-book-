import Cocoa

// Массив
let alfaArray = ["a", "b", "c"]
var muArray = [2, 4, 8]

Array(arrayLiteral: 1, 1, 2, 3, 5, 8, 13)

let newAlphaArray = Array(arrayLiteral: "a", "b", "c")
print(newAlphaArray)

let lineArray = Array(0...9) // создан массив от 0 до 9 через диапазон (0...9)
lineArray

Array(repeating: "Yes", count: 3) // создание массива с повторяющимися значениями
// Доступ к элементам массива

// Неизменяеммый массив
let alphaArray = ["a", "b", "c"]
// Изменяемый массив
var mutableArray = [2, 4, 8]
// Доступ к элементам массива
alphaArray[1]
mutableArray[2]

mutableArray[1] = 16
print(mutableArray)

var stringsArray = ["one", "two", "three", "four"]
stringsArray[1...2] = ["five"] // замена 1 и 2 элемента массива
stringsArray

// Тип данных массива
let firstArray = Array(arrayLiteral: "a", "b", "c")
type(of: firstArray)
let secondAr = Array(1..<5)
type(of: secondAr)
// Array<T>    = [T]

let arrayOne: Array<Character> = ["a", "b", "c"]
let arrayTwo: [Int] = [1, 2, 5, 8, 11]

let parentArray = ["one", "two", "three"]
// Создаем копию массива
var copyParentArray = parentArray
copyParentArray[1] = "four"
parentArray
copyParentArray

// Пустой массив
let emptyArray: [String] = []
let anotherEmptyArray = [String]()

// Сравнение масссива
let a1 = 1
let a2 = 2
let a3 = 3
var someArray = [1, 2, 3]
someArray == [a1, a2, a3]

let charsOne = ["a", "b", "c"]
let charsTwo = ["d", "e", "f"]
let charsThree = ["g", "h", "i"]

// создание массива слиянием
var alphabet = charsOne + charsTwo
alphabet += charsThree
print(alphabet)

// Многомерные массивы 6.13
var arrayOfArrays = [[1,2,3], [4,5,6], [7,8,9]]
arrayOfArrays[2]
arrayOfArrays[2][1]

// Базовые свойства и методы массивов
// свойство count - возвращает количество элементов в массиве

let someArrayNew = [1,2,3,4,5]
someArrayNew.count

let emptyArrayNew: [Int] = []
emptyArrayNew.count
emptyArrayNew.isEmpty

var numArray = [1,2,3,4,5,]
// количество элементов в массиве
let sliceOfArray = numArray[numArray.count-3...numArray.count-1]

sliceOfArray.count
let subArray = numArray.suffix(3)  // тоже считает масси с последнего элеимента
sliceOfArray.first
sliceOfArray.last

// метод append(_:) добавляет новый элемент в конец массива
numArray
numArray.append(6)

//  insert(_:at:) вставляет в массив новый одиночный элемент с указаннным индексом
numArray.insert(100, at: 2)

// методы, remove(at:) removeFirst removeLast
numArray.remove(at: 2)
numArray.removeFirst()
numArray.removeLast()
numArray
numArray.dropLast()
let anotherNumArray = numArray.dropFirst(3)
anotherNumArray
numArray

// contains(_:) определяет факт наличия некоторого элеемента в массиве и возвращает Bool
let resultTrue = numArray.contains(4)
let resultFalse = numArray.contains(10)

let randomArray = [3,2,4,5,6,4,7,5]

// поиск минимального и максимального значения элемента
randomArray.min()
randomArray.max()


// reverse() изменяет порядок следования всех элементов массива на противоположный
var myNewArray = ["a", "bb", "ccc"]
myNewArray.reverse()
myNewArray

// методы позволяют отсортировать массив повозрастанию - sort() sorted()
var unsortedArray = [3,2,5,22,8,1,29]
let sortedArray = unsortedArray.sorted()
unsortedArray.sort()
unsortedArray.reverse()

// 6.28
let moneyArray = [50, 100, 500, 1000, 5000]
let randomMoneyElement = moneyArray.randomElement()

// -ed окончание значит не меняет исходное значение


// 6.8 Срезы массивов ArraySlice
let a = 1
let b = 8
let c = 3
let d = 2
let f = 6
var maxNum = 1
if a > maxNum {
    maxNum = a
}
if b > maxNum {
    maxNum = b
}
if c > maxNum {
    maxNum = c
}
if d > maxNum {
    maxNum = d
}
if f > maxNum {
    maxNum = f
}
print(maxNum)

var count = 0
let distance = 10000
let firstFriendSpeed = 1
let secondFriendSpeed = 2
let speedDog = 5

    
  // срезы
let arrayOfNumbers = Array(1...10)
type(of: arrayOfNumbers)
let slice = arrayOfNumbers[4...6]
slice
type(of: slice) // ArraySlice - это тип подмножества массива
let arrayFromSlice = Array(slice)
type(of: arrayFromSlice)

let newArray: Array<Int> = arrayOfNumbers.dropLast()
type(of: newArray)
newArray
arrayOfNumbers
slice[5] // индексы остаются такеже как вы исходном массиве 6.32



