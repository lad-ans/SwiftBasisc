import Foundation

struct MovieModel {
    let title: String
    let genre: MovieGenre
    let isFavorite: Bool
    
    func updateFavori(value: Bool) {
        MovieModel(title: title, genre: genre, isFavorite: value)
    }  
    
//    mutating func updateFavori(value: Bool) {
//        isFavorite = value
//    }
}

enum MovieGenre {
    case comedy, action, horror
    
    var title: String {
        switch self {
        case .comedy:
            return "Comedy"
        case .action:
            return "Action"
        case .horror:
            return "Horror"
        }
    }
}

class MovieManager {
    public var movie1 = MovieModel(title: "Last", genre: .action, isFavorite: false)
    
    private var movie2 = MovieModel(title: "Dark", genre: .comedy, isFavorite:false)
    
    private(set) var movie3 = MovieModel(title: "Lost", genre: .horror, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavori(value: isFavorite)
    }
}

let manager = MovieManager()

manager.movie1.updateFavori(value: false)

print(manager.movie1.genre.title)

