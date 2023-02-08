import SwiftUI

struct ForEachUI: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                HStack{
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("Hi: \(index)")
                }
            }
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachUI_Previews: PreviewProvider {
    static var previews: some View {
        ForEachUI()
    }
}
