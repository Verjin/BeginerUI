import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserage: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            HStack {
                Text(currentUserName ?? "your name here")
                    .font(.title)
                Text("\(currentUserage ?? 0) years")
                    .font(.title2)
            }
            Text("\(currentUserGender ?? "unknow")")
                .font(.title3)
            Button {
                signOut()
            } label: {
                Text("SIGN OUT")
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding()
    }
    
    func signOut() {
        currentUserName = nil
        currentUserage = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }    
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
