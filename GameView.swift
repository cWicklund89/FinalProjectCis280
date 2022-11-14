import SwiftUI

class UserState:ObservableObject{
    @Published var viewState:Int;
    @Published var userName:String?;
    @Published var userGender:String?;
    
    init(viewState:Int){
        self.viewState = viewState;
    }
}

@main
struct GameView: App {
    @ObservedObject var userState:UserState = UserState(viewState: 0);
    var body: some Scene {
        WindowGroup {
            if (userState.viewState == 0)
            {
                HomeScreen().environmentObject(userState);
            }
            else
            {
                CreateUserView().environmentObject(userState);
            }
            
            
        }
    }
}

