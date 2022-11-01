import Foundation

struct MusicModel: Hashable {
    
    let id: String = UUID().uuidString
    let name: String
    
    func getURL() -> URL {
        return URL(string: Bundle.main.path(forResource: name, ofType: "wav")!)!
    }
    
}
