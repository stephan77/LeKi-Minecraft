import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.infos) { info in
                VStack(alignment: .leading) {
                    Text(info.title).font(.headline)
                    Text(info.description).font(.subheadline)
                }
            }
            .navigationTitle("Server Info")
            .task {
                await viewModel.fetchInfo()
            }
        }
    }
}

#Preview {
    HomeView()
}
