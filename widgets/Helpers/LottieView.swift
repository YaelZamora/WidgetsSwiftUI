//
//  LottieView.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 21/02/24.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let animationView = LottieAnimationView(name: "duck")
        animationView.play()
        animationView.loopMode = .loop
        return animationView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
}

struct LottieViews: View {
    var body: some View {
        VStack {
            LottieView()
            Text("El patito feliz!")
        }
    }
}

#Preview {
    LottieViews()
}
