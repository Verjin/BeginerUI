import SwiftUI

struct AnimationTiming: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 5
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 1, dampingFraction: 0.7, blendDuration: 1),value: isAnimating)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.linear, value: isAnimating)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeIn, value: isAnimating)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeInOut, value: isAnimating)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.default, value: isAnimating)
            
        }
    }
}

struct AnimationTiming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTiming()
    }
}
