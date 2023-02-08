import SwiftUI

// Структура ContentView которая подписана под протокол View(UI - User Interface)
struct Start: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
                .padding(.horizontal, 5)
            
            Text("Разнообразный и богатый опыт укрепление и развитие структуры в значительной степени обуславливает создание позиций")
                .padding(.horizontal, 5)
                .multilineTextAlignment(.center)
        }
        .padding(.vertical)
        .background(Color.white . cornerRadius(10) .shadow(color:Color.black.opacity(0.3), radius: 10, x: 0, y: 0))
        .padding(8)
    }
}


// Превью Canvas (option + cmd + enter) - для отображения всего того кода который написан выше. Canvas - полотно или холст (Симулятор)
struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}
