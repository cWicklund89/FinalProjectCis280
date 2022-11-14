import SwiftUI

import SwiftUI
import SpriteKit

struct GameOverViewVampire: View {
    var body: some View {
        
        GeometryReader { geometry in
            ZStack
            {
                
                Image("dusk")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                
                Image("nightLife")
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
                    .foregroundColor(.red)
                    Text("Welp, now you've gone and done it, your decisions have turned you into a vampire! Better find yourself a nice coffin (this isn't 'Vampire's Quest). Now a nightwalker, you stick to the shadows (as some things never change), stalking your prey in the night. Congratulations? The city is now yours to feed upon...Try Again? Y/N")
                        .font(.body   .weight(.semibold))
                        .frame(maxHeight: 400)
                        .frame(maxWidth: 875)
                        .foregroundColor(.white)
                }
            }
        }
        
    }
}

struct GameOverViewVampire_Previews: PreviewProvider {
    static var previews: some View {
        GameOverViewVampire()
    }
}
