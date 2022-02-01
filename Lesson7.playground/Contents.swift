import UIKit

func myFunc() {
    let a = 10
    let b = 20
    print (a+b)
}

func myFunc2(a:Int) {
    let b = 20
    print (a+b)
}

func myFunc3(a:Int) -> Int {
    let b = 20
    return (a+b)
}

func myFunc4(a:Int, b:Int) -> Int {
    return (a+b)
}

func myFunc5(a:Int, b:Int = 0) -> Int {
    return (a+b)
}
func myFunc5(firstNumber a:Int, secondNumber b:Int = 0) -> Int {
    return a - b
}

func myFunc5(_ a:Int, _ b:Int = 0) -> Int {
    return a * b
}
myFunc()
myFunc2(a: 10)
let mySum = myFunc3(a: 10)
print(mySum)
print(myFunc4(a: 10, b: 20)) // 10 + 20
print(myFunc5(a: 10)) // 10 + 0
print(myFunc5(a: 10, b: 20)) // 10 + 20
print(myFunc5(firstNumber: 10, secondNumber: 20)) // 10 - 20
print(myFunc5(10, 20)) // 10 * 20
