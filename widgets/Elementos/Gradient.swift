//
//  Gradient.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 21/10/24.
//

import SwiftUI

struct GradientView: View {
    @State private var angle = 10.0
    
    var body: some View {
        AngularGradient(
            colors: [
                .red,
                .orange,
                .yellow,
                .green,
                .blue,
                .purple,
                .red
            ],
            center: .center,
            angle: Angle(degrees: angle)
        )
        .ignoresSafeArea()
        .onAppear {
            angle += 360
        }
        .animation(.linear(duration: 20).repeatForever(autoreverses: false), value: angle)
    }
}

#Preview {
    GradientView()
}
