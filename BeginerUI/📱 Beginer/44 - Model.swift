import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct Model: View {
    
    @State var users: [UserModel] = [
//        "Nick", "Emily", "Денис", "Женя", "Joni"
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "Emily.sawqwe1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Денис", userName: "ninja", followerCount: 355, isVerified: false),
        UserModel(displayName: "Женя", userName: "Chrqer", followerCount: 88, isVerified: true),
        UserModel(displayName: "Joni", userName: "Jonia001", followerCount: 3333, isVerified: true)
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                       
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct Model_Previews: PreviewProvider {
    static var previews: some View {
        Model()
    }
}
