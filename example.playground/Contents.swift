import Cocoa

var numbers: [Int] = [1, 2, 3]
var maxArrayElement = numbers[0]

for i in numbers {
    if i > maxArrayElement {
        maxArrayElement = i
    } 
}
print(maxArrayElement)
