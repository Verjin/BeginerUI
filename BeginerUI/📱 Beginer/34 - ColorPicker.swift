import SwiftUI

struct ColorPickerUI: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color", selection: $backgroundColor)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickerUI_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerUI()
    }
}
