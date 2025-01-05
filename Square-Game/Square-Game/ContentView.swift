//
//  ContentView.swift
//  Square-Game
//
//  Created by Gimantha 044 on 2024-12-15.
//

import SwiftUI

struct ContentView: View {
    
    private var gridItemLayout: [GridItem] = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    
    var body: some View {
        LazyVGrid(columns: gridItemLayout, spacing: 10){
            ForEach((0...8), id: \.self){
                grid in
                Button(action: {
                    print(grid)
                }){
                    Rectangle().fill(randomColor())
                        .frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(15)
                            .padding()
                }
            }
        }
    }
}

func randomColor() -> Color {
    var colorRand = [Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple, Color.pink]
    
    return colorRand.randomElement() ?? Color.blue
}

#Preview {
    ContentView()
}
