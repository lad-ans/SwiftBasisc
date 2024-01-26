import Foundation

struct User {
    let name: String
    let surname: String
    let isPremium: Bool
}

var users: [User] = [
    User(name: "Ladino", surname: "Anselmo", isPremium: true),
    User(name: "Fifi", surname: "Anselmo", isPremium: false)
]


//Filter
var premiumUsers = users.filter { user in user.isPremium }

var premiumUsers2 = users.filter ({ $0.isPremium })

print(premiumUsers2)

//Sort
var sortedUsers = users.sorted { user1, user2 in
    user1.name < user2.name
}

var sortedUsers2 = users.sorted (by: { $0.name < $1.name })

print(sortedUsers2)

//Map

var usernames: [String] = users.map { user in
    user.name
}

var usernames2: [String] = users.map ({ $0.surname })

print(usernames)
print(usernames2)
