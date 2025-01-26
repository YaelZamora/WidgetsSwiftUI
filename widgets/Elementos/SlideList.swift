//
//  SlideList.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 17/01/25.
//

import SwiftUI

struct SlideList: View {
    @State var positionX = 200.0
    @State var positionY = 390.0
    @State var opacity = 1.0
    
    var body: some View {
        ZStack {
            Text("Texto")
                .font(.largeTitle)
                .bold()
                .padding()
                .background(.red)
                .cornerRadius(20)
                .padding(.horizontal)
                .position(x: positionX, y: positionY)
                .opacity(opacity)
            
            HStack(spacing: 150) {
                Image(systemName: "chevron.left").font(.largeTitle).bold()
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1)) {
                            positionX = 100
                            opacity = 0
                        }
                        /*withAnimation(.easeInOut(duration: 1).delay(3)) {
                            positionX = 200
                            opacity = 1
                        }*/
                    }
                Image(systemName: "chevron.right").font(.largeTitle).bold()
            }
        }
    }
}

#Preview {
    SlideList()
}
