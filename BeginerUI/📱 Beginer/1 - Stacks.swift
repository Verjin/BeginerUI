import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack{
            VStack(alignment: .center) {
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Divider()
                Spacer()
                    .frame(height: 50)
                Text("Hello, World!")
                    .padding()
                Text("Hello, World!")
            }
            HStack (spacing: 30)  {
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text("Hello, World!")
            }
            ZStack {
                Image(systemName: "applelogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                Text("+")
                    .font(.title.bold())
                    .foregroundColor(.white)
            }
        }
    }
}


struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}


/*
Stack - может содержать только 10 view
 VStack()
 HStack()
 ZStack()

View:
Divider() - Разделение полоской
Spacer() - Разделяет View на равные части. Занимает всё предоставление ему пространство
*/
