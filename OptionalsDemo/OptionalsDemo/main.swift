
//let myOptional: String?

//myOptional = nil

//if myOptional != nil {
//    let text: String = myOptional!
//} else {
//    print("nil")
//}
 
// 3. Optional Bind
//if let safeOptional = myOptional {
//    let text: String = safeOptional
//} else {
//    print("nil")
//}

// 4. Nil Coalescing Operator
//let text: String = myOptional ?? "default value"
//print(text)


///
struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

//print(myOptional!.property) // dangerous!!!

// 5. Optional Chaining
print(myOptional?.property)
myOptional?.method()
