import SwiftUI

struct ButtonUI: View {
    
    @State private var button = false
    @State private var title = "This is my title"
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
                .font(.largeTitle)
            
            // Button #1
            Button("Press me") {
                self.title = "Button #1"
            }
            
            // Button #2
            Button {
                self.title = "Button #2"
            } label: {
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding() .padding(.horizontal)
                    .background(Color.blue .cornerRadius(10) .shadow(radius: 10))
            }
            
            // Button #3
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(Image(systemName: "heart.fill") .font(.largeTitle) .foregroundColor(Color.red))
            }

            // Button #4
            Button {
                self.title = "Button #4"
            } label: {
                Text("finish".uppercased())
                    .font(.caption .bold())
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Capsule().stroke(Color.gray, lineWidth: 2))
                
            }

            // Button #5
            Button {
                self.button.toggle() // Метод toggle - будет переключать значения, нашего свойства button с false на true
                self.title = "Button #5"
            } label: {
                Text("Tap me".uppercased())
                    .frame(width: 150, height: 50)
                    .foregroundColor(.black)
                    .background(Ellipse() .foregroundColor(.white) .shadow(radius: 10))
            }
            
            if button {
                Text("😀😀".uppercased())
                    .frame(width: 150, height: 50)
                    .foregroundColor(.black)
                    .background(Ellipse() .foregroundColor(.green) .shadow(radius: 10))
            }
        }
    }
}


struct ButtonUI_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUI()
    }
}



