import Foundation

var pizzaInches: Int = 10 {
    willSet{
        //print(pizzaInches)
        //print(newValue)
    }
    didSet{
        if pizzaInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInches = 18
        }
        //print(oldValue)
        //print(pizzaInches)
    }
}

pizzaInches = 33
print(pizzaInches)

var numberOfPeople: Int = 6
let slicesPerPerson: Int = 5

var numberOfSlices: Int {
    get {
        return pizzaInches - 4
    }
//    set {
//        print("numberOfSlices now has a new Value which is \(newValue)")
//    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4
print(numberOfPeople)
