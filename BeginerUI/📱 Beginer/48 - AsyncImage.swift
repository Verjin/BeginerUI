import SwiftUI

struct AsyncImageUI: View {
    
    let url = URL(string: "https://images.hdqwalls.com/wallpapers/couple-holding-hands-vector-art-4k-lh.jpg")
    
    var body: some View {
        AsyncImage(url: url) { returnImage in
            returnImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 500, height: 500)
                .cornerRadius(20)
        } placeholder: {
            ProgressView()
        }

    }
}

struct AsyncImageUI_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageUI()
    }
}
