import SwiftUI

struct TextFieldUI: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here..", text: $textFieldText)
//                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3)).cornerRadius(10)
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate()) // Конструкция отключает нажатие кнопки
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("TextField")
        }
    }
    
    func textIsAppropriate() -> Bool {
        // check text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldUI_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldUI()
    }
}
