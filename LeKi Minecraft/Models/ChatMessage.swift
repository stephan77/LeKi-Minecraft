import Foundation

struct ChatMessage: Identifiable {
    let id: String
    let user: String
    let text: String
    let date: Date
}
