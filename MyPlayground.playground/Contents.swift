

//var player1Username: String = nil

var player1Usernamer: String? = nil

player1Usernamer = "jack"

var unwrappedP1Username = player1Usernamer!

player1Usernamer = nil

if player1Usernamer != nil {
    print(player1Usernamer!)
}
