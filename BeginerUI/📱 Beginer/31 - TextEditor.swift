import SwiftUI

struct TextEditorUI: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .cornerRadius(10)
                    .colorMultiply(.gray)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                
                Spacer()
            }
            .padding()
            
            .navigationTitle("Text Editor")
        }
    }
}

struct TextEditorUI_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorUI()
    }
}
