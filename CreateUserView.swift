import SwiftUI

struct CreateUserView: View
{
    @State var userName:String = "";
    @State var userGender:String = "";
    @EnvironmentObject var userState:UserState;
    
    var body: some View
    {
        
            GeometryReader { geometry in
                ZStack
                {
                    
                    Image("bg1")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                    Image("bg4")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                    Image("bg2")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                    Image("bg3")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                    
                }
        VStack {
            HStack{
                Text("Create Character").font(.largeTitle).bold();
            }.frame(minWidth: 64, idealWidth: 64, maxWidth: .infinity, minHeight: 64, idealHeight: 64, maxHeight: 64, alignment: .center)
            
            HStack{
                Text("Name:").font(.title2);
                TextField("", text: $userName);
            }
            
            
            HStack{
                Text("Gender:").font(.title2);
                TextField("", text: $userGender);
            }
            
            HStack{
                Text("Age:").font(.title2);
                TextField("", text: $userGender);
            }
            
            HStack
            {
                Button("Create")
                {
                    userState.userName = userName;
                    userState.userGender = userGender;
                    userState.viewState = 1;
                    
                }
                
            }
            
        }
                Spacer();
    }
}
}

struct CreateUserView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserView()
    }
}

