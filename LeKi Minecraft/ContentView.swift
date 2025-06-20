import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            ChatView()
                .tabItem { Label("Chat", systemImage: "bubble.left.and.bubble.right") }
            ShopView()
                .tabItem { Label("Shop", systemImage: "cart") }
            EventsView()
                .tabItem { Label("Events", systemImage: "calendar") }
        }
    }
}

#Preview {
    ContentView()
}
