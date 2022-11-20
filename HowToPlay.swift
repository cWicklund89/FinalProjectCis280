import SwiftUI
import SpriteKit

struct HowToPlay: View
{
    //@State var userName:String = "";
    //@State var userGender:String = "";
    //@EnvironmentObject var userState:UserState;
    
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
                    Image("bg3")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                    Image("bg2")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                    
                }
        VStack {
            HStack{
                Text("How To Play").font(.largeTitle).bold().underline() .foregroundColor(.white);
            }.frame(minWidth: 64, idealWidth: 64, maxWidth: .infinity, minHeight: 64, idealHeight: 64, maxHeight: 64, alignment: .center)
            
            HStack{
                Text("You play a week in the life as The Introvert").font(.body) .foregroundColor(.white) ;
                
            }
            
            
            HStack{
                Text("Where each day is exactly like real life,").font(.body) .foregroundColor(.white) ;

              
            }
            
            
            HStack{
                Text("entirely left up to chance!").font(.body) .foregroundColor(.white) ;

                
            }
            
            HStack{
                Text("")
            }
            
            HStack{
                Text("Each day is split into 4 sections:").font(.body) .foregroundColor(.white) ;

            }
            
            HStack{
                Text("Morning, Noon, Afternoon, & Evening").font(.body) .foregroundColor(.white) ;

            }
            
            
           
            HStack{
                Text("Each section of the day contains ").font(.body) .foregroundColor(.white) ;
                
            }
            
            HStack{
                Text("4 outcomes distinct to that time of day ").font(.body) .foregroundColor(.white) ;
                
            }
            
            
            HStack
            {
                NavigationLink(destination: DiceRollView()) {
                            Text("Start Game")
                            .foregroundColor(.white)
                            .font(.title)
                    }
            }
            
        }
    }
}
}

struct HowToPlay_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlay()
    }
}

