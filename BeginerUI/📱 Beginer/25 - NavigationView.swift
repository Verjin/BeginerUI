import SwiftUI

struct NavigationViewUI: View {
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello world", destination: MyOtherScreen())
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarBackButtonHidden()
           
        }
        
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var twoScreen
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
                .navigationTitle("Yellow Screen")
//                .navigationBarBackButtonHidden(true) // убирает переход (стрелку)
            VStack {
                Button("Back") {
                    twoScreen()
                }
                
                NavigationLink("Click here", destination: Text("3rd screen"))
            }
        }
    }
}



struct NavigationViewUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewUI()
    }
}
