import SwiftUI

struct StateUI: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My title"
    @State var myCount: Int = 0
    
    var body: some View {
        ZStack {
            // Background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            // Content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(myCount)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button #1") {
                        backgroundColor = .red
                        myTitle = "BUTTON #1 was pressed"
                        myCount += 1
                    }
                    Button("Button #2") {
                        backgroundColor = .purple
                        myTitle = "BUTTON #2 was pressed"
                        myCount -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateUI_Previews: PreviewProvider {
    static var previews: some View {
        StateUI()
    }
}
