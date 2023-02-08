import SwiftUI

struct ExtractSubview: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        HStack{
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 2, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}


struct ExtractSubview_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubview()
    }
}


struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
