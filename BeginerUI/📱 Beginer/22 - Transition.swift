import SwiftUI

struct Transition: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        Button {
            showView.toggle()
        } label: {
            Image(systemName: "square.and.arrow.up.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.green)
                
        }
        .sheet(isPresented: $showView) {
            Text("Hello Forom Sheet")
                .presentationDetents([.medium])
                .presentationDragIndicator(.hidden)
                .transition(.move(edge: .bottom))
        }
    }
}


struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}

/*
 .transition(.move(edge: .bottom))
 .transition(.slide)
 .transition(.move(edge: .top))
 .transition(AnyTransition.opacity.animation(.easeInOut))
 .transition(AnyTransition.scale.animation(.easeInOut))
 .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
 .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
 
*/
