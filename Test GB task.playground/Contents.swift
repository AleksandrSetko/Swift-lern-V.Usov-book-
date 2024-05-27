import Cocoa

let numbers = [2, 8, 15, 6, 22]
let sizeArray = numbers.count

// var indexOfElemetArray = numbers[0]
var maxNumberArray = numbers[0]

for i in numbers {
    if i > maxNumberArray {
        maxNumberArray = i
    }
}
print(maxNumberArray)

var maxNumberOfArrayIndex = numbers.firstIndex(of: maxNumberArray)
var newNumbers = numbers
maxNumberOfArrayIndex
type(of: newNumbers)
type(of: maxNumberOfArrayIndex)
newNumbers.remove(at: maxNumberOfArrayIndex!) // ! извлечения опционального типа

var secondMaxNumberArray = 0
for i in newNumbers {
    if i > secondMaxNumberArray {
        secondMaxNumberArray = i
    }
}
print(secondMaxNumberArray)



// неиже не нужно
/*
let someArray = [[1,8], [3,2]]
let a = 1
let b = 8

let c = 3
let d = 2

let multipl = a * c + b * 2
let multiplArray = someArray[0][0] * someArray[1][0] + someArray[0][1] * someArray[1][1]

let firstVector = [1, 8]
let secondVector = [6, 3]
let size = 2
var scalarProduct = 0
var index = 0
*/

