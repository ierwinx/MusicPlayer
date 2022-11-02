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
    
    //Permite background adicional al capability de la app de background
    init() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func initAudio(url: URL) {
        player = try? AVAudioPlayer(contentsOf: url)
        player?.prepareToPlay()
        playAudio()
    }
    
    func stopAudio() {
        player?.stop()
    }
    
    func pauseAudio() {
        player?.pause()
    }
    
    func playAudio() {
        player?.play()
    }
    
}
