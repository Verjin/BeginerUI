import SwiftUI



struct OnboardingView: View { 
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alerTitle: String = ""
    @State var showAlert: Bool = false
    
   // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserage: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
            .alert(isPresented: $showAlert) {
                return Alert(title: Text(alerTitle))
            }
        }
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}



// MARK: COMPONENTS
extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" : onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay {
                    Capsule(style: .continuous)
                        .frame(height: 3, alignment: .bottom)
                        .offset(y: 20)
                        .foregroundColor(.white)
                }
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What`s your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            
            
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What`s your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(age, specifier: "%.0f")")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            
            
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What`s your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            } label: {
                Text("Select a gender")
            }
            .accentColor(.purple)
            .font(.headline).bold()
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)

            Spacer()
            
            
        }
        .padding(30)
    }
    
    
}

// MARK: FUNCTIONS

extension OnboardingView {
    

    func handleNextButtonPressed() {
        
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else { // Имя не меньше 3 букв
                showAlert(title: "Your name must be at least 3 characters long! 🙃")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward! 😀")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        
        
        if onboardingState == 3 {
            signIn()
        }
        withAnimation(.spring()) {
            onboardingState += 1
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserage = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alerTitle = title
        showAlert.toggle()
    }
}
