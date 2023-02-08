import SwiftUI

struct Gradients: View {
    
    var colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(colors: [.black, .white], startPoint: .top, endPoint: .bottom))
            Text("Hello, World!")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(colors: [.black, .white], startPoint: .trailing, endPoint: .leading))
            Circle()
                .strokeBorder(colors, lineWidth: 10)
                .frame(width: 200, height: 200)
        }
    }
}


struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}

//  .strokeBorder(colors, lineWidth: 50) - границы (.цвет, .ширина линии)

