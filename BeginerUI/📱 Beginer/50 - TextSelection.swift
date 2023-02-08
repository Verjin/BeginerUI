import SwiftUI

struct TextSelection: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled)
    }
}

struct TextSelection_Previews: PreviewProvider {
    static var previews: some View {
        TextSelection()
    }
}
