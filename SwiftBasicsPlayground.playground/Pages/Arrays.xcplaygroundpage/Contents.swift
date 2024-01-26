import Foundation

var names: [String] = ["Ladino", "Carlos"]

print(names)

if names.indices.contains(2) {
    print(names[2])
}

names.append("Milena")

names.append(contentsOf: ["Fifi"])

let mappedNames = names.map { e in
    "\(e)::"
}

print(mappedNames)

struct MyObject {
    let name: String
}

let myObjects: Array<MyObject> = [MyObject(name: "Ladino")]

print(myObjects)
