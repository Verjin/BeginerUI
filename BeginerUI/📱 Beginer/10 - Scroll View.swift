import SwiftUI

struct ScrollViewUI: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding() 
                            }
                        }
                    }
                }
            }
        }.background(Color.orange)
    }
}

struct ScrollViewUI_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewUI()
    }
}
