//
//  PositionHelper.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/10/23.
//

import Foundation

enum Position {
    
    case topLeft
    case topRight
    case topCenter
    case bottomLeft
    case bottomRight
    case bottomCenter
    case none

    init(position: Int) {
        switch position {
        case 0: self = .topLeft
        case 1: self = .topRight
        case 2: self = .topCenter
        case 3: self = .bottomLeft
        case 4: self = .bottomRight
        case 5: self = .bottomCenter
        default: self = .none
        }
    }
}

func generatePosition(positionIndex: Int) -> CGPoint {
    var x: Double = 0
    var y: Double = 0
    
    switch Position(position: positionIndex) {
    case .topLeft:
        x = 50
        y = 50
        break
    
    case .topRight:
        x = 300
        y = 50
        break
        
    case .topCenter:
        x = 195
        y = 50
        break
        
    case .bottomLeft:
        x = 50
        y = 700
        break
        
    case .bottomRight:
        x = 300
        y = 700
        break
        
    case .bottomCenter:
        x = 195
        y = 700
        break
        
    case .none:
        x = 0
        y = 0
        break
    }
    return CGPoint(x: x, y: y)
}
