import SwiftUI

struct TapGestureUI: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
                
            Image(systemName: "applelogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .gesture(LongPressGesture(maximumDistance: 30)
                         // (minimumDuration: 2) - Время удержания кнопки для тапа (Нажать и держать)
                         // (maximumDistance: 30) - Дистанция для тапа (Тапнуть и провести)
                    .onEnded { _ in
                        print("Dragged")
                    } )
                
            
            Spacer()

        }
        .padding(40)
    }
}

struct TapGestureUI_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureUI()
    }
}
