

//var player1Username: String = nil

/*var player1Usernamer: String? = nil

player1Usernamer = "jack"

var unwrappedP1Username = player1Usernamer!

player1Usernamer = nil

if player1Usernamer != nil {
    print(player1Usernamer!)
}*/

/*struct Town {
    let name = "Angelaland"
    var citizens = ["Angela", "Ju3un"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    func fortify() {
        print("Defences increased!")
    }
}

var myTown = Town()

print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain")

myTown.citizens.append("Rora")
print(myTown.citizens)

myTown.fortify()*/

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defences increased!")
    }
}

var anotherTown = Town(name: "Seoul", citizens: ["lueun"], resources: ["Coconuts": 100])

var ghostTown = Town(name: "Ghosty Mcface", citizens: [], resources: ["TumbleWeed": 1])
