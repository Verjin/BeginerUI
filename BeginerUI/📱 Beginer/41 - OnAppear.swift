import SwiftUI

struct OnAppearUI: View {
    
    @State var myText: String = "Start Text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear() {
                                count += 1
                            }
                    }
                }
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            }
            .onDisappear() {
                myText = "Ending text."
            }
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnAppearUI_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearUI()
    }
}
