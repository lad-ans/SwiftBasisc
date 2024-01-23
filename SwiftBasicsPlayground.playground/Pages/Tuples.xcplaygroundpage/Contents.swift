import Foundation


let name = "Ladino"

func getUsername() -> String {
    name
}

//getUsername()

func getTwoValues() -> (name: String, isSingle: Bool) {
    return ("Ladino", false)
}

var data = getTwoValues()

debugPrint(data.name)

var (r, f): (String?, Bool?) = (nil, nil)

r = "any value"
debugPrint(r!.description)
