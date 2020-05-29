import UIKit
import Foundation

let fruits = ["Apple", "Pear", "Orange"]
//let fruits: Set = ["Apple", "Pear", "Orange"]   // unordered
let contacts = ["Adam": 1234, "James": 5678, "Amy": 9012]
let word = "helloworld"
let halfOpenRange = 1..<5
let closedRange = 1...5

for _ in halfOpenRange {
    print("hello")
}

let _ = 1..<5


var now = Date().timeIntervalSince1970
let oneSecondFromNow = now + 1

while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("waiting...")
}

func fibonacci(n: Int) {
    
    var n1 = 0
    var n2 = 1
    
    if n == 0 {
        print("Invalid")
    } else if n == 1 {
        print(n1)
    } else if n == 2 {
        print(n1, n2)
    } else {
        var array = [n1, n2]
        for _ in 2..<n {
            var n3 = n1 + n2
            array.append(n3)
            n2 = n3
            n1 = n2
        }
        print(array)
    }
    
}

fibonacci(n: 5)
