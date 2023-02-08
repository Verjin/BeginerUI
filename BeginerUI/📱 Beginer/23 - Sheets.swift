import SwiftUI

struct Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}


struct SecondScreen: View {
    
    @Environment(\.dismiss) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
                
            }
        }
    }
}

struct Sheets_Previews: PreviewProvider {
    static var previews: some View {
        //        SecondScreen()
        Sheets()
    }
}



// .fullScreenCover(isPresented: $showSheet) - Полный лист
// .sheet(isPresented: $showSheet) - Наслоение листа

