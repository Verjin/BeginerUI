import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {     
    }
    
    func getData() {
        dataArray.append(contentsOf: ["Iphone", "Ipad", "iMac", "Apple Watch"])
    }
    
    
    
}


struct EnvironmentObjectUI: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    Text(item)
                }
            }
            .navigationTitle("iOS Devices")
        }
    }
}

struct EnvironmentObjectUI_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectUI()
    }
}
