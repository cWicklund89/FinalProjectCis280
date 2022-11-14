import SwiftUI
import SpriteKit

struct GameOverView: View {
    var body: some View {
        
        GeometryReader { geometry in
            ZStack
            {
                
                Image("bg1")
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
                        Text("Week Over...")
                            .font(.largeTitle .weight(.semibold))
                            .frame(maxHeight: .infinity)
                        
                        }
                    //.foregroundColor(.red)
                    Text("The air is heavy and the city feels stale. You find yourself once again attached to the stool at Larry's Root Beer Bar & Emporium. You think to yourself 'this wasn't the ending I had hoped for' as you empty another bottle of Sarsaparilla and slam it to the bar. Still thirsty, you reach into your pockets to only find Canadian quarters and pocket lint. Try again? Y/N")
                        .font(.body   .weight(.semibold))
                        .frame(maxHeight: 400)
                        .frame(maxWidth: 875)
                        .foregroundColor(.white)
                }
            }
        }
        
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView()
    }
}

