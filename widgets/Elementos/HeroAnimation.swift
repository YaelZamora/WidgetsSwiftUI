//
//  HeroAnimation.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct HeroAnimation: View {
    @Namespace var animation
    @State private var shouldAnimate = false
    var number = 60
    
    var body: some View {
        VStack {
            if shouldAnimate {
                InitialView(animation: _animation, imageNumber: number).matchedGeometryEffect(id: "image", in: animation, anchor: .bottom)
            } else {
                DetailView(animation: _animation, imageNumber: number).matchedGeometryEffect(id: "image", in: animation, anchor: .top)
            }
        }.onTapGesture {
            withAnimation {
                shouldAnimate.toggle()
            }
        }
    }
}

#Preview {
    HeroAnimation()
}
