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
    @State var color: Color
    
    
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
        }.foregroundStyle(color).position(generatePosition(positionIndex: position))
    }
}

#Preview {
    ActionButton(size: 75, icon: "plus", position: 2, color: .blue)
}
