import SwiftUI

struct AppStorageUI: View {
    
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button {
                let name: String = "Vlad"
                currentUserName = name
                UserDefaults.standard.set(name, forKey: "name")
            } label: {
                Text("save".uppercased())
            }

        }
        .onAppear {
            currentUserName = UserDefaults.standard.string(forKey: "name")
        }
       
        
    }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageUI()
    }
}
