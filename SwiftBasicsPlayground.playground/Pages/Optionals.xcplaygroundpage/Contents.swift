import Foundation

var canBeTrue: Bool? = nil

if canBeTrue ?? true {
    debugPrint("IS TRUE \(String(describing: canBeTrue?.description))")
}

//IF THERE HAS VALUE SET isTrue variable with that value
if let isTrue = canBeTrue {
    if isTrue {
        debugPrint("IS TRUE")
    } else {
        debugPrint("IS NOT TRUE")
    }
} else {
    debugPrint("NO VALUE")
}

func getIsTrue() -> Bool {
    guard let verifyCanBeTrue = canBeTrue else {
        debugPrint("NO GUARD VALUE")
        
        return false
    }
    
    return verifyCanBeTrue
}

getIsTrue()


var isLoading: Bool? = true
var initStatus: Int? = 1

func getStatus() {
    if let isLoading, let initStatus {
        debugPrint("Carregando...")
    } else {
        debugPrint("Não Carregou!")
    }
}

getStatus()
