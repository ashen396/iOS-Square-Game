//
//  LevelSelector.swift
//  Square-Game
//
//  Created by Gimantha 044 on 2025-02-01.
//

import SwiftUI

struct LevelSelector: View {
    var body: some View {
        
        // Enums
        // 0: Easy
        // 1: Medium
        // 2: Hard
        VStack{
            NavigationLink(destination: Gameplay(level: 0)){
                Text("Easy")
                    .font(.title2)
                    .padding(.horizontal, 70)
                    .padding(.vertical, 8)
                    .foregroundStyle(.white)
                    .background(.green)
                    .cornerRadius(8)
            }
            
            NavigationLink(destination: Gameplay(level: 1)){
                Text("Medium")
                    .font(.title2)
                    .padding(.horizontal, 53)
                    .padding(.vertical, 8)
                    .foregroundStyle(.white)
                    .background(.orange)
                    .cornerRadius(8)
            }
            
            NavigationLink(destination: Gameplay(level: 2)){
                Text("Hard")
                    .font(.title2)
                    .padding(.horizontal, 68)
                    .padding(.vertical, 8)
                    .foregroundStyle(.white)
                    .background(.red)
                    .cornerRadius(8)
            }
        }
    }
}

struct LevelSelector_Previews: PreviewProvider{
    static var previews: some View{
        LevelSelector()
    }
}
