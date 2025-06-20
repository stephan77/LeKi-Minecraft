import Foundation

@MainActor
class ChatViewModel: ObservableObject {
    @Published var messages: [ChatMessage] = []

    func send(_ text: String) {
        let message = ChatMessage(id: UUID().uuidString, user: "You", text: text, date: Date())
        messages.append(message)
    }
}
