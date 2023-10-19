//
//  ActionButton.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 18/10/23.
//

import SwiftUI

struct ActionButton: View {
    @State var size: CGFloat
    @State var icon: String
    @State var position: Int
    
    
    var body: some View {
        Button {
            //
        } label: {
            ZStack {
                Circle().frame(width: size)
                Label("", systemImage: icon)
                    .foregroundStyle(.white)
                    .labelStyle(.iconOnly)
                    .font(.title)
            }
        }.position(generatePosition(positionIndex: position))
    }
}

enum Position: String {
    
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

#Preview {
    ActionButton(size: 75, icon: "plus", position: 5)
}
