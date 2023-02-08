import SwiftUI

struct ConverterView: View {
    @State var converterSlider: Double = 0
    @State var minimum: Double = 0.0
    @State var maxmimum: Double = 100.0
    var body: some View {
        VStack {
            Stepper("", value: $converterSlider, in: 0...100)
                .padding()
            
            Slider(value: $converterSlider, in: 0...100, step: 1)
                .tint(.black)
                .foregroundColor(.black)
                .padding(30)
            
            HStack {
                Text("\(converterSlider, specifier: "%.0f") ºC")
                    .font(.headline)
                Image(systemName: "arrow.left.arrow.right")
                    .font(.headline)
                    .padding(.horizontal)
                Text("\(converterSlider * 9/5 + 32, specifier: "%.0f") ºF")
                    .font(.headline)
            }
            
            Gauge(value: converterSlider, in: minimum...maxmimum){}
        currentValueLabel: {
            Text("\(Int(converterSlider))")
        }
        .padding(40)
        .tint(Gradient(colors: [.blue, .green, .yellow, .orange, .red]))
        .scaleEffect(2)
        .gaugeStyle(.accessoryCircular)
            
            Spacer()
        }
        .background(Color.yellow)
    }
}


struct ConverterView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterView()
    }
}
