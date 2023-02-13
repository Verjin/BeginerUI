import SwiftUI

struct AppStorageUI: View {
    
    
    @AppStorage("name") var currentUserName: String?
    @State var title: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
//            if let name = currentUserName {
//                Text(name)
//            }
             
            TextField("Add", text: $title)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button {
                let name = title
                currentUserName = name
            } label: {
                Text("save".uppercased())
            }
        }
    }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageUI()
    }
}
