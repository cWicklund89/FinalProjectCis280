import SwiftUI

struct HomeScreen:View
{
    @EnvironmentObject var userState:UserState;
    
    var body: some View
    {
        
        
        GeometryReader { geometry in
            NavigationView {
            ZStack
                    {
                Image("cityL9")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                Image("cityL7")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                Image("cityL5")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                Image("cityL3")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                Image("cityL2")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                Image("cityL1")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                
                VStack{
                    HStack{
                    Text("Introvert's Quest")
                        .font(.largeTitle .weight(.semibold))
                        .frame(maxHeight: .infinity)
                        }
                    NavigationLink(destination: CreateUserView()) {
                                Text("Start Game")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    
                    Text("")
                        .font(.body)
                        .frame(maxHeight: .infinity)
                        .onAppear(perform: {
                            playSound(sound: "introverts-quest", type: "mp3")
                        })
    
                          
                        }
                    }
                    }
                    }
    }
}

struct HomeScreen_Previews: PreviewProvider
{
    static var previews: some View
    {
        HomeScreen()
    }
}
    



