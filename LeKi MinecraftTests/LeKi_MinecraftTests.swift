import Testing
@testable import LeKi_Minecraft

struct LeKi_MinecraftTests {

    @Test func testLoadServerInfo() async throws {
        let infos = try await NetworkManager.shared.loadServerInfo()
        #expect(!infos.isEmpty)
    }
}
