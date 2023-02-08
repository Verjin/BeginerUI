import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

// 1 - use a binding
// 2 - use multiple .sheets
// 3 - use $item

struct MultipleSheets: View {
    
    @State var selectedModel: RandomModel = RandomModel(title: "STARTING TITLE")
    @State var showSheet: Bool = false
    
    
    var body: some View {
        VStack{
            Button("Button #1") {
                selectedModel = RandomModel(title: "One")
                showSheet.toggle()
            }
            Button("Button #2") {
                selectedModel = RandomModel(title: "Two")
                showSheet.toggle()
            }
        }
        .sheet(isPresented: $showSheet) {
            NextSCreen(selectedModel: $selectedModel)
        }
    }
}

struct NextSCreen: View {
    
    @Binding var selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}


struct MultipleSheets_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheets()
    }
}
