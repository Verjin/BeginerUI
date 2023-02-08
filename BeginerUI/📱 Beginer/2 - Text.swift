import SwiftUI

struct TextUI: View {
    var body: some View {
        VStack{
            Text("Таким образом укрепление и развитие структуры участие в формировании позиций." .uppercased())
                .kerning(5)
//                .tracking(5)
                .lineLimit(nil)
//                .truncationMode(.tail)
//                .bold()
//                .fontWeight(.ultraLight)
                .underline()
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
                .font(.largeTitle)
                .font(.system(size: 50, weight: .semibold, design: .serif))
                .baselineOffset(10)
                .multilineTextAlignment(.center)
                .background(Color.yellow)
                .foregroundColor(.blue)
//                .frame(width: 200, height: 100, alignment: .center)
//                .minimumScaleFactor(0.1)
//                .lineSpacing(20)
            Text("Hello, World!")
                .font(.largeTitle)
                .padding()
                .background(Color.blue)
                .cornerRadius(14)
                .padding()
        }
    }
}


struct TextUI_Previews: PreviewProvider {
    static var previews: some View {
        TextUI()
    }
}


/*
Text("Текст" .uppercased())
 .capitalized - Каждое слово с заглавной буквы
 .uppercased() - Все слова заглавными буквами
МОДИФИКАТОРЫ
 .kerning(5) - Растояние между символами (Добавяет доп. пробел в конце)
 .tracking(5) - Растояние между символами (Не добавляет доп. пробел в конце)
 .lineLimit(nil) - Колличество строк выделить для текста (nil) - неограниченное колличество строк
 .truncationMode(.tail) - Сокращение текста в (.head - начале, .middle - середине, .tail - в конце)
 .bold() - Полужирный
 .fontWeight(.ultraLight) - Шрифт вес
 .underline() - Подчеркивание
 .underline(true, color: Color.red) - Подчеркивание
 .italic() - Курсив
 .strikethrough(true, color: Color.green) - Зачеркивание
 .font(.largeTitle) - Шрифт
 .font(.system(size: 50, weight: .semibold, design: .serif)) - Шрифт
 .baselineOffset(10) - Смещение по ширине
 .multilineTextAlignment(.center) - Выравниевание текста
 .background(Color.yellow)
 .foregroundColor(.blue)
 .frame(width: 200, height: 100, alignment: .center) - Рамка
 .minimumScaleFactor(0.1) - Минимальный коэффициент масштабирования
 .lineSpacing(20)
*/
