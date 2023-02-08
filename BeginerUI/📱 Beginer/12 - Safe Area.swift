import SwiftUI

struct SafeArea: View {
    var body: some View {

            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
            .background(Color.blue, ignoresSafeAreaEdges: .all)

//        ZStack {
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            // fonergound
//            VStack{
//                Text("Hello World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
    }
}

struct SafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SafeArea()
    }
}
