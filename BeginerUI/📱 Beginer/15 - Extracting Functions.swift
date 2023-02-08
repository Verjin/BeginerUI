import SwiftUI

struct ExtractingFunctions: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            // Background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            // Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("Press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed() {
        if backgroundColor == .pink{
            backgroundColor = .yellow
        }else{
            backgroundColor = .pink
        }
    }
}

struct ExtractingFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingFunctions()
    }
}
