import Foundation

class NetworkManager {
    static let shared = NetworkManager()

    func loadServerInfo() async throws -> [ServerInfo] {
        guard let url = Bundle.main.url(forResource: "sample_serverinfo", withExtension: "json") else {
            return []
        }
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        return try decoder.decode([ServerInfo].self, from: data)
    }
}
