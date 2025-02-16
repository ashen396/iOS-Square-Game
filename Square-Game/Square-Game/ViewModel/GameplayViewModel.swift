//
//  GameplayViewModel.swift
//  Square-Game
//
//  Created by Gimantha 044 on 2025-02-01.
//

import SwiftUI
import Combine

class GameplayViewModel: ObservableObject{
    
    func returnTimeout(gamelevel: Int = 0) -> Int{
        switch gamelevel{
        case 0:
            return 30
        case 1:
            return 45
        case 2:
            return 60
        default:
            return 30
        }
    }
    
    func returnGridSize(gamelevel: Int = 0) -> Int{
        switch gamelevel{
        case 0:
            return 9
        case 1:
            return 16
        case 2:
            return 25
        default:
            return 9
        }
    }
    
    func returnGrid(gamelevel: Int = 0) -> [GridItem]{
//            let columns: [GridItem] = [
//                GridItem(.flexible()),
//                GridItem(.flexible()),
//                GridItem(.flexible())
//            ]
        
        
//                let gridSize: Int = GameplayViewModel().returnGridSize(gamelevel: level)
//                let columns : [GridItem] = []
//                let columnSize = Float(gridSize).squareRoot()
//        let columns = GameplayViewModel().returnGridSize(gamelevel: level, gridSize: 2)
        
        var columns: [GridItem] = []

        for _ in 0..<10{
            columns.append(GridItem(.flexible()))
        }
        
//        ForEach(0..<9, id: \.self){
//            index in columns.append(GridItem(.flexible()))
//        }
        
//        for _ in 0..<9 {
////            let grid = GridItem(.flexible())
////            columns.append(grid)
//            
//            columns.append(GridItem())
//        }
        return columns
    }
}
