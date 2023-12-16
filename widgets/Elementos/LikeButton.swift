//
//  LikeButton.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 15/12/23.
//

import SwiftUI

struct LikeButton: View {
    @State var yPosition: CGFloat = 200.0
    @State var color: Color = .black
    @State var opacidad: Double = 1.0
    
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill").font(.title)
                .foregroundColor(.red)
                .position(x: 90, y: 200)
            Image(systemName: "heart.fill").font(.title)
                .foregroundColor(color.opacity(opacidad))
                .position(x: 90, y: yPosition)
                .onTapGesture {
                    withAnimation(.easeOut(duration: 2)) {
                        while yPosition > 100 {
                            yPosition -= 150
                            color = .red
                            opacidad -= 1
                        }
                    }
            }
        }
    }
}

#Preview {
    LikeButton()
}
