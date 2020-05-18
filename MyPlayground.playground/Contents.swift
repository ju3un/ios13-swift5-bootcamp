

func greeting1() {
    print("Hello")
    
    func greeting2() {
        print("Hey")
    }
    greeting2()
    
}

func greeting3(whoToGreat: String) {
    print("Hello \(whoToGreat)")
}

greeting3(whoToGreat: "jueun")
greeting3(whoToGreat: "Jack Bauer")
