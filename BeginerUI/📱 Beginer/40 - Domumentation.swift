import SwiftUI

struct Domumentation: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = ["Apples", "Oranges", "Bananas"]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // Nick - Working copy - things to do:
    /*
    1) Fix title
    2) Fix alert
    3) Fix something else
    */
    
    
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: Button(action: {
                    showAlert.toggle()
                }, label: {
                    Text("ALERT")
                })
                ).alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        } // END: NAV
    }
    
    /// This is foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specifield title.
    ///
    /// This function creates and returns an alert immedialety. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: text("Hi"))
    /// ```
    /// - Warning: There is additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    
    // MARK: PREVIEW

struct Domumentation_Previews: PreviewProvider {
    static var previews: some View {
        Domumentation()
    }
}
