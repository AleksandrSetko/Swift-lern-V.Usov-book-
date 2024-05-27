import Cocoa

// Глава № 1 xcod 14.3.1
/*
 Выражение — команда, выполняющая одну или несколько операций. Выражение может состоять из множества операторов и операндов.
 
 Оператор — это минимальная независимая функциональная единица (символ, слово или группа слов), выполняющая определенную операцию.
 
 Операнд — это значение, с которым оператор производит операцию.
 */


var str = "Hello, playground"
// var - оператор, инициализация - присвоения значения; "=" - оператор присвоения (инициализации)

// 1.6 Переменные и константы
/*
 var - переменная
 let - константа
 */

var age3 = 21
age3 = 22
age3

let name = "Vasilly"

// Объявление нескольких параметров
let friend1 = "John", friend2 = "Helga"
var age1 = 54, age2 = 25

// 1.7 Инициализация копированием (value type)
let myAge = 40
var yourAge = myAge
yourAge

// 1.11 Комментарии
// однострочный комметарий
/*
 многострочный комментарий
 */

// Markdown (//:)
//: пример - editor > Show Raw Markup

// 1.13
var number = 18
number = 55; let userName = "Alex"

//1.13 print(_:) + function

let userName1 = "Dolf"
var countOfFriends = 5
userName1
countOfFriends + 3

print("Hello, Junior Swift Developer")
let foo = "Текст для вывода на консоль"
print(foo)
let bar = "Swift"
print("Я изучаю \(bar)")

let myConst = "this is my first const"
var myVariable = 1408
print(myConst)

var age = 19
print(age)
age = 20
print(age)
