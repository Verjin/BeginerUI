import SwiftUI

struct BindingUI: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack{
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}


struct BindingUI_Previews: PreviewProvider {
    static var previews: some View {
        BindingUI()
    }
}


struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .black
            title = "NEW TITLE"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
