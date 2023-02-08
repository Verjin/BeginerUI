import SwiftUI

struct SliderUI: View {
    
    @State var sliderValue: Double = 50
    @State var isEditing = false
    @State var sliderValueX: Double = 0
    
    var body: some View {
        VStack {
            Text("Rating")
            Text("\(sliderValue, specifier: "%.0f")")
                .font(.title)
                .foregroundColor(isEditing ? .red : .blue)
            Slider(value: $sliderValue, in: 0...100, step: 1) { }
        onEditingChanged: { editing in
            isEditing = editing
        }
        
            Slider(value: $sliderValueX, in: 0...100, step: 5) {
                Text("\(sliderValueX)")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            }
        }
    }
}

struct SliderUI_Previews: PreviewProvider {
    static var previews: some View {
        SliderUI()
    }
}
