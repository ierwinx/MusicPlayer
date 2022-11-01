import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contentViewModel.arrMusic, id: \.id) { sonido in
                    Button("Play sound \(sonido.name)") {
                        contentViewModel.playAudio(url: sonido.getURL())
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
