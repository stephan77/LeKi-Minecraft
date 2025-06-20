import SwiftUI

struct ChatView: View {
    @StateObject private var viewModel = ChatViewModel()
    @State private var input: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                List(viewModel.messages) { message in
                    HStack(alignment: .top) {
                        Text(message.user).bold()
                        Text(message.text)
                    }
                }
                HStack {
                    TextField("Message", text: $input)
                        .textFieldStyle(.roundedBorder)
                    Button("Send") {
                        viewModel.send(input)
                        input = ""
                    }
                }
                .padding()
            }
            .navigationTitle("Chat")
        }
    }
}

#Preview {
    ChatView()
}
