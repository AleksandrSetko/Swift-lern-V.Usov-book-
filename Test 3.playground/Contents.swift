import Cocoa
let numbers = [1, 8, 3, 2, 6, 15, 48, 22]
let sizeArray = numbers.count
var currentIndex = 0
var maxNumberIndex = 0
var firstMaxNumber = numbers[0]
var secondMaxNumber = 0
for i in numbers {
    if i > firstMaxNumber {
        firstMaxNumber = i
    }
}
print(firstMaxNumber)
