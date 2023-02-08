import SwiftUI

struct AlertUI: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor:Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Button("BUTTON #1") {
                    alertType = .error
                    showAlert.toggle()
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                }
                Button("BUTTON #2") {
                    alertType = .success
                    showAlert.toggle()
//                    alertTitle = "Good title"
//                    alertMessage = "Good Message"
                }
                Button("BUTTON #3") {
                    
                    showAlert.toggle()
                }
            }
                .alert(isPresented: $showAlert) {
                    getAlert()
  
            }   
        }
    }
    
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .orange
            }))
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .yellow
            }))
        default:
            return Alert(title: Text("Error"))
        }
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
//            title: Text("Удалить фон изображения?"),
//            message: Text("Желтый фон будет удален"),
//            primaryButton: .destructive(Text("Удалить")) {
//                backgroundColor = .red
//            },
//            secondaryButton: .cancel(Text("Вернуться")))
    }
}

struct AlertUI_Previews: PreviewProvider {
    static var previews: some View {
        AlertUI()
    }
}
