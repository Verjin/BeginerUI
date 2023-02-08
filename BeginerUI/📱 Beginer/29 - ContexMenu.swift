import SwiftUI

struct ContexMenuUI: View {
   
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("SWiftfull Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .foregroundColor(.white)
        .contextMenu() {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            Button {
                backgroundColor = .red
            } label: {
                Text("Report post")
            }
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContexMenuUI_Previews: PreviewProvider {
    static var previews: some View {
        ContexMenuUI()
    }
}
