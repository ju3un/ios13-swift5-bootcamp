protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird.")
        }
    }
}

class Eagle: Bird, CanFly {
    
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    
    func fly() {
        print("The airplanes uses its engine to lift off into the air")
    }
}


let myEgle = Eagle()
let myPenguine = Penguin()
let myPlane = Airplane()
myEgle.fly()
myPlane.fly()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
