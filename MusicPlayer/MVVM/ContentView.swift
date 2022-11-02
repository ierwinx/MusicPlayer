import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contentViewModel.arrMusic, id: \.id) { sonido in
                    Button("Play sound \(sonido.name)") {
                        contentViewModel.initAudio(url: sonido.getURL())
                    }
                }
            }
            .toolbar {
                HStack {
                    Button {
                        contentViewModel.pauseAudio()
                    } label: {
                        Image(systemName: "pause.fill")
                            .foregroundColor(.red)
                    }
                    Button {
                        contentViewModel.playAudio()
                    } label: {
                        Image(systemName: "play.fill")
                            .foregroundColor(.red)
                    }
                    Button {
                        contentViewModel.stopAudio()
                    } label: {
                        Image(systemName: "stop.fill")
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationBarTitle("Musica")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
