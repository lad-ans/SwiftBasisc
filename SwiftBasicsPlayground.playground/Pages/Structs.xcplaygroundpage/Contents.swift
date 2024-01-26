import Foundation

//Structs are fas
//Stored in the stack (memory)
//Object in the stack are value types
//Value types are copied and mutated


struct Quiz {
    let title: String
    let createdAt: Date
    let isPremium: Bool?
    
    //Structs have implicit init
    
    init(title: String, createdAt: Date, isPremium: Bool) {
        self.title = title
        self.createdAt = createdAt
        self.isPremium = isPremium
    }

    init(title: String, createdAt: Date = .now) {
        self.title = title
        self.createdAt = createdAt
        self.isPremium = true
    }
    
    init(title: String, createdAt: Date?, isPremium: Bool = false) {
        self.title = title
        self.createdAt = createdAt ?? .now
        self.isPremium = isPremium
    }
}

let myQuiz: Quiz = Quiz(title: "Quiz 1")
let myQuiz2: Quiz = Quiz(title: "Quiz 2", createdAt: .now, isPremium: true)

//IMMUTABLE
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1 = UserModel(name: "Ladino", isPremium: true)

func markUserAsPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: false)
    print(user1)
}

markUserAsPremium()

struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Ladans", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    user2.isPremium = false
    print(user2)
}

markUserAsPremium2()

struct UserModel3 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func updateIsPremium() {
        isPremium = true
    }
}
