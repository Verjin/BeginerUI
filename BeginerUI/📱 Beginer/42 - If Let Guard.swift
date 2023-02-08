import SwiftUI

struct IfLetGuard: View {
    
    @State var currentUserId: String? = nil
    @State var displayText: String = ""
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // DO NOT USER ! EVER!!
                // DO NOT FORCE UNWRAP VALUES
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear() {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserId {
        isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserId else {
            displayText = "Error. There is no User ID!"
            return
        }
        isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            
        }
    }
}

struct IfLetGuard_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuard()
    }
}
