import SwiftUI

@main struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                print("1")
                let data = loadJSON()
                print("2")
            }
        }
}

#Preview {
    ContentView()
}
