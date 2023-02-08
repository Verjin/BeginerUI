import SwiftUI

struct GridUI: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {  
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            LazyVGrid (columns: columns, alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<18) {index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()
                ) {
                    ForEach(0..<18) {index in
                        Rectangle()
                            .fill(.blue)
                            .frame(height: 150)
                    }
                }
            }
        }
    }
}

struct GridUI_Previews: PreviewProvider {
    static var previews: some View {
        GridUI()
    }
}
