import SwiftUI

struct PickerUI: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }
    @State private var selectedFlavor: Flavor = .chocolate
    
    var color = ["black", "green", "red", "brown", "blue"]
    @State private var picker = 0
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [.foregroundColor : UIColor.white]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    
    var body: some View {
        VStack{
            Picker(selection: $selection) {
                ForEach(filterOptions.indices, id: \.self) { index in
                    Text(filterOptions[index]).tag(filterOptions[index])
                }
            } label: {
                Text("picker")
            }
            .pickerStyle(.segmented)
            List {
                Picker("Flavor", selection: $selectedFlavor) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }
            }
            .background(Color.red)
            
            Picker(selection: $selection) {
                ForEach(filterOptions, id: \.self) { option in
                    HStack {
                        Text(option).tag(option)
                        Image(systemName: "heart")
                    }
                }
            } label: {
                HStack{
                    Text("Filter:")
                    Text(selection)
                }
            }
            
            HStack {
                Text("Age:")
                Text(selection)
            }
            
            Picker(selection: $selection) {
                ForEach(18..<100) { number in
                    Text("\(number)") .tag("\(number)")
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(.inline)
            .background(Color.gray.opacity(0.1))
            
        }
    }
}

struct PickerUI_Previews: PreviewProvider {
    static var previews: some View {
        PickerUI()
    }
}
