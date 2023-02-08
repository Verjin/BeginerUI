import SwiftUI

struct ActionSheetUI: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@USername")
                Spacer()
                Button {
                    actionSheetOptions = .isOtherPost // .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)

                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // Add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // Add code to report this post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // Add code to delete this post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("what woud you like to do?")
        
        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, cancelButton])
        }
    }
}

    
struct ActionSheetUI_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetUI()
    }
}
