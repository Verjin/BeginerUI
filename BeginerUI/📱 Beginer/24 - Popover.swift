import SwiftUI

struct Popover: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // МЕТОД 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen(showNewScreen: $showNewScreen)
//            }
            
            
            // МЕТОД 2 - TRANSITION
//            ZStack{
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            
            // МЕТОД 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
    }
}
    
    
struct NewScreen: View {
    
    @Environment(\.dismiss) var exitSecondScreen
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.edgesIgnoringSafeArea(.all)
            
            Button {
//               exitSecondScreen()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}
    
    
struct Popover_Previews: PreviewProvider {
    static var previews: some View {
//        NewScreen()
        Popover()
    }
}
