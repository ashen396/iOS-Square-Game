import SwiftUI

struct Homepage: View {
    var body: some View{
        NavigationView {
            VStack{
                Text("The Square Game")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, -100)
                
                NavigationLink(destination: LevelSelector()){
                    Text("Start")
                        .font(.title2)
                        .padding(.horizontal, 70)
                        .padding(.vertical, 8)
                        .foregroundStyle(.white)
                        .background(.purple)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: Gameplay()){
                    Text("Guidelines")
                        .font(.title2)
                        .padding(.horizontal, 42)
                        .padding(.vertical, 8)
                        .foregroundStyle(.white)
                        .background(.green)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: Gameplay()){
                    Text("High Score")
                        .font(.title2)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 8)
                        .foregroundStyle(.white)
                        .background(.orange)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: Gameplay()){
                    Text("Exit")
                        .font(.title2)
                        .padding(.horizontal, 74)
                        .padding(.vertical, 8)
                        .foregroundStyle(.white)
                        .background(.red)
                        .cornerRadius(8)
                }
            }
        }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
