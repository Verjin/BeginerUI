import SwiftUI

struct BackgroundMaterial: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea(.all)
        .background(
            Image("image1")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        )
    }
}

struct BackgroundMaterial_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterial()
    }
}
