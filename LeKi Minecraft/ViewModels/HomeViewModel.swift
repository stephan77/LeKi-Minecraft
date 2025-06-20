import Foundation

@MainActor
class HomeViewModel: ObservableObject {
    @Published var infos: [ServerInfo] = []

    func fetchInfo() async {
        do {
            let data = try await NetworkManager.shared.loadServerInfo()
            infos = data
        } catch {
            print("Failed to load server info: \(error)")
        }
    }
}
