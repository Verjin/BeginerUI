import SwiftUI

struct BadgesUI: View {
    var body: some View {
        VStack{
            TabView {
                Color.red
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("hello")
                    }
                    .badge("NEW")
                
                Color.green
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("hello")
                    }
                
                Color.blue
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("hello")
                    }
            }
            List {
                Text("Hello World")
                    .badge(5)
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
        }
    }
}

struct BadgesUI_Previews: PreviewProvider {
    static var previews: some View {
        BadgesUI()
    }
}
