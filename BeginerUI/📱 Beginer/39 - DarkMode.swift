import SwiftUI

struct DarkModeUI: View {
    
    @Environment(\.colorScheme) var colorSheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("adaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorSheme == .light ? .green : .yellow)
                    
                }
            }
            .navigationTitle("Dark Mode")
        }
    }
}
struct DarkModeUI_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeUI()
    }
}
