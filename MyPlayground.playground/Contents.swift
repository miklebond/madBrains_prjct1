import UIKit

var greeting = "Hello, playground"

func getIntFromLabel() -> Int {
    Int(greeting) ?? 0
}

var intFromLabel: Int {
    Int(greeting) ?? 0
}


let a = intFromLabel
print(a)
