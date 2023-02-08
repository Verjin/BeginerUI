import SwiftUI

struct ClippedTest: View {
    @State private var buttonTapCount: Int = 0
    @State private var rectTapCount: Int = 0
    @State private var isClippingDisabled: Bool = false
    @State private var activateContentShape: Bool = false

    var body: some View {
        VStack(spacing: 40) {
            VStack {
                Toggle("Show unclipped square", isOn: $isClippingDisabled)
                Toggle("Limit hit testing with `.contentShape()`", isOn: $activateContentShape)
            }

            Grid(horizontalSpacing: 24) {
                GridRow {
                    Text("Button")
                    Text("Square")
                }

                GridRow {
                    Text("\(buttonTapCount)")
                    Text("\(rectTapCount)")
                }
                .font(.largeTitle.bold().monospacedDigit())
            }

            VStack {
                Button("You can't tap me!") {
                    buttonTapCount += 1
                }
                .buttonStyle(.borderedProminent)

                ZStack {
                    if activateContentShape {
                        clippedRect
                            .contentShape(Rectangle())
                    } else {
                        clippedRect
                    }
                }
                .onTapGesture {
                    rectTapCount += 1
                }
                .background {
                    if isClippingDisabled {
                        rect.opacity(0.3)
                    }
                }
            }

            Text("""
                The orange square is actually 300×300 pt, but is clipped to 100×100.
                `.clipped()` doesn’t limit hit testing to the visible area. This is why you can’t tap the button.
                """)
            .multilineTextAlignment(.leading)
            
           

        }
        .padding()

    }

    @ViewBuilder private var rect: some View {
        Rectangle()
            .fill(.orange.gradient)
            .frame(width: 300, height: 300)
    }

    @ViewBuilder private var clippedRect: some View {
        rect
            .frame(width: 100, height: 100)
            .clipped()
    }
}

struct ClippedTest_Previews: PreviewProvider {
    static var previews: some View {
        ClippedTest()
    }
}
