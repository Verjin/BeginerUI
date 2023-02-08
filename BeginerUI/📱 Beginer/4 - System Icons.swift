import SwiftUI

struct SystemIcons: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
//            .font(.largeTitle)
//            .aspectRatio( contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
//            .font(.caption)
            .font(.system(size: 200))
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
//            .clipped()  
    }
}

struct SystemIcons_Previews: PreviewProvider {
    static var previews: some View {
        SystemIcons()
    }
}
