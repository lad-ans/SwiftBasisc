import Foundation

struct Emproyee {
    let role: String
    let title: String
    let name: String
}

protocol EmployeeHasName {
    var name: String { get set }
}

