import SwiftUI

struct TabViewUI: View {
    
    @State var selectionTab: Int = 2
    
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]
    
    var body: some View {
        VStack{
            TabView {
                ForEach(icons, id: \.self) { icon in
                    Image(systemName: icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(30)
                }
                //            RoundedRectangle(cornerRadius: 25)
                //                .foregroundColor(.green)
                //            RoundedRectangle(cornerRadius: 25)
                //            RoundedRectangle(cornerRadius: 25)
                //                .foregroundColor(.blue)
            }
            .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
            .frame(height: 300)
            .tabViewStyle(.page)
            TabView(selection: $selectionTab) {
                HomeView(selectedTab: $selectionTab)
                    .tabItem {
                        Image(systemName: "square.and.arrow.up")
                        Text("Home")
                    }
                    .tag(0)
                
                Text("BROWSE TAB")
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Browse")
                    }
                    .tag(1)
                Text("PROFILE TAB")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                    .tag(2)
            }
            .accentColor(.black)
        }
    }
}

struct TabViewUI_Previews: PreviewProvider {
    static var previews: some View {
        TabViewUI()
    }
}


struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.top)
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to proffile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
