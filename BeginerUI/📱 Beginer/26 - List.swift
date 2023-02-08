import SwiftUI

struct ListUI: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section("Fruit") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: fruitsDeleted)
                    .onMove(perform: move)
                }
                .listRowBackground(Color.yellow)
                Section("Veggies") {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                    .onDelete(perform: veggiesDeleted)
                    .onMove(perform: veggiesMove)
                }
                .listRowBackground(Color.green)
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton) 
        }
    }
    

    
    var addButton: some View {
        
        Button {
            add()
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    // MARK Deleted
    func fruitsDeleted(at indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func veggiesDeleted(at vegDel: IndexSet) {
        veggies.remove(atOffsets: vegDel)
    }
    
    
    // MARK Move
    func move(indices: IndexSet, newOfSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOfSet)
    }
    
    func veggiesMove(vegIndex: IndexSet, newOfVeg: Int) {
        veggies.move(fromOffsets: vegIndex, toOffset: newOfVeg)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}


struct ListUI_Previews: PreviewProvider {
    static var previews: some View {
        ListUI()
    }
}
