import SwiftUI

struct DiceRollView: View {
    
    //dice number
    @State var number = 1
    @State var numberTwo = 1
    
    var body: some View {
  
        GeometryReader { geometry in
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
                
                VStack {
                    //image
                    Image("dice\(number)")
                        .onTapGesture {
                  
                            number = Int.random(in: 1...6)
                        }
                    Image("dice\(numberTwo)")
                        .onTapGesture {
                     
                            numberTwo = Int.random(in: 1...6)
                        }
                    
                    //the button
                    Button(action: {
                      
                        number = Int.random(in: 1...6)
                        numberTwo = Int.random(in: 1...6)
                    }) {
                        //button look
                        Text("Roll Dice")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 32))
                    }
                }
                }
            }
        }
        
  
    }


struct DiceRollView_Previews: PreviewProvider {
    static var previews: some View {
        DiceRollView()
    }
}

