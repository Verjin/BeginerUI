import SwiftUI

struct ListSwipeActions: View {
   
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Arhive") {
                            
                        }
                        .tint(.green)
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                        Button("Save") {
                            
                        }
                        .tint(.blue)

                    }
            }
//            .onDelete(perform: delete)
        }
    }
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActions()
    }
}
