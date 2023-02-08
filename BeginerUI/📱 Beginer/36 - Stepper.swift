import SwiftUI

struct StepperUI: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    @State var stepperValueSize: CGFloat = 10
    
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue, .green, .purple, .pink]
                           
    
    var body: some View {
        VStack {
            
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            
            Stepper("RoundedRectangle") {
                incrementWidth(amount: 100)
            } onDecrement: {
                incrementWidth(amount: -100)
            }
            
            Stepper("Size: \(stepperValueSize, specifier: "%.0f")", value: $stepperValueSize, step: 5)
                .padding(50)
            Text("Size")
                .font(.system(size: stepperValueSize))
                .frame(width: 100, height: 100)
            
            Stepper {
                Text("Value: \(value) Color: \(colors[value].description)")
            } onIncrement: {
                incrementStep()
            } onDecrement: {
                decrementStep()
            }
            .padding(5)
            .background(colors[value])

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
    
    // Apple color stepper
    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }
    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }
}

struct StepperUI_Previews: PreviewProvider {
    static var previews: some View {
        StepperUI()
    }
}
