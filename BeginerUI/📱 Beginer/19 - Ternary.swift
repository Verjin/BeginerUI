import SwiftUI

struct Ternary: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            Text(isStartingState ? "STARTING STATE" : "ENDING STATE")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 50, height: isStartingState ? 100: 50)
            
            Spacer()
        }
        
    }
}

struct Ternary_Previews: PreviewProvider {
    static var previews: some View {
        Ternary()
    }
}
