import SwiftUI

struct ImageUI: View {
    var body: some View {
        VStack (spacing: 100) {
            Image("image")
//                .renderingMode(.template)
                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .scaledToFit()
                .scaledToFill()
                .frame(width: 300, height: 200)
//                .foregroundColor(.red)
//                .clipped()
//                .cornerRadius(150)
                .clipShape(
//                    Circle()
//                    RoundedRectangle(cornerRadius: 25)
                    Ellipse()
                )
        }
    }
}


struct ImageUI_Previews: PreviewProvider {
    static var previews: some View {
        ImageUI()
    }
}


/*
Image("image") - Обращение в скобках к name Assets
 .resizable() - Изменяемый размер
 .aspectRatio(contentMode: .fit) - Соотношение сторон
 .frame(width: 100, height: 100) - Рамка
Image(systemName: "applelogo") - Обращение к системным изображением (shift + cmd + L)
 .clipShape(Capsule())
 .fill(Color.red) - Окрасить (Заполнить)
Capsule() - Капсула
Circle() - Круг
 
 
*/
