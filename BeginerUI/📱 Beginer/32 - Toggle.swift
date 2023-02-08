import SwiftUI

struct ToggleUI: View {
    
    @State var toggleIsOn: Bool = false
    @State var toggleIsOnX: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(isOn: $toggleIsOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .black))
            Spacer()
        }
        .padding(.horizontal, 100)  
    }
}


struct ToggleUI_Previews: PreviewProvider {
    static var previews: some View {
        ToggleUI()
    }
}
