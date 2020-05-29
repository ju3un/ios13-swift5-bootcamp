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

