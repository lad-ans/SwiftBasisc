import Foundation

//Classes are slow comparing to Structs
//Are store in the Heap
//Objects in the Heap are references types
//Point to an object in memory and update the object in memory

class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    //Classes requires explicit init
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        
    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(value: Bool) {
        showButton = value
    }
}

//we are using let because:
//the object itself is not changing
//the data inside is changing
let viewModel: ScreenViewModel = ScreenViewModel(
    title: "Wellcome",
    showButton: true
)
