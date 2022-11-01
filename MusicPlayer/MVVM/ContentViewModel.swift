import AVKit

class ContentViewModel: ObservableObject {
    
    @Published var arrMusic = [
        MusicModel(name: "1"), MusicModel(name: "2"),
        MusicModel(name: "3"), MusicModel(name: "4"),
        MusicModel(name: "5"), MusicModel(name: "6"),
        MusicModel(name: "7"), MusicModel(name: "8"),
        MusicModel(name: "9"), MusicModel(name: "10")
    ]
    private var player: AVAudioPlayer?
    
    func playAudio(url: URL) {
        player = try? AVAudioPlayer(contentsOf: url)
        player?.prepareToPlay()
        player?.play()
    }
    
}
