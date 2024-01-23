import Foundation

func functionSample() {
    debugPrint("Minha função")
}

func getUsername(name: String, surname: String) -> String {
    return "\(name) \(surname)"
}


debugPrint(getUsername(name: "Ladino", surname: "Arnaldo"))

func donate() {
    let people = "rich"
    
    guard people == "pooverty" else { return }
    
    debugPrint("donate")
}

//Calculated variables are basically functions
var age: Int {
    2024 - 1995
}

debugPrint(age)
 
