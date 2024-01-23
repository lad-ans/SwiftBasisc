import Foundation

//Enum are the same as structs except we known all cases at runtime

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

struct CarBrand {
    let brand: String
}

//Stored in memory but we canot mutate
enum CarBrandOption {
    case ford, toyota
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        }
    }
}

var car1 = CarModel(brand: .ford, model: "Fiesta")
var car2 = CarModel(brand: .toyota, model: "Land Cruiser")
var car3 = CarModel(brand: .ford, model: "Mustang")

let brandName: CarBrandOption = .ford

print(brandName.title)
