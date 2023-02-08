import SwiftUI

struct Animation: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                    isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .yellow : .green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.default, value: isAnimated)
            
            Spacer()
        }
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}

/*
 withAnimation(Animation.default.delay(0.5)) - Задержка 0.5 сек.
 withAnimation(Animation.default.repeatCount(5)) - Повторять
 withAnimation(Animation.default.repeatCount(5, autoreverses: true))
 */
