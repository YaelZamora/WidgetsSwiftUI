//
//  Switch.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/05/23.
//

import SwiftUI

struct Switch: View {
    @State private var positionX = 25
    @State private var positionIcon = 75
    @State private var color = Color.blue
    @State private var foreground = Color.black
    @State private var iconoType = "sun.max.fill"
    @State private var iconoSecond = "cloud.fill"
    @State private var colorIcon = Color.white
    @State var touchingButton: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25).frame(width: 100, height: 50).foregroundColor(color)
            Circle().frame(width: 40).position(x: CGFloat(positionX), y: 25).foregroundColor(foreground)
            Image(systemName: iconoType).foregroundColor(colorIcon).position(x: CGFloat(positionX), y: 25)
            Image(systemName: iconoSecond).foregroundColor(.white).position(x: CGFloat(positionIcon), y: 25)
        }.frame(width: 100, height: 50)
            .onTapGesture {
                touchingButton = !touchingButton
                
                if(touchingButton){
                    withAnimation {
                        positionX = 25
                        color = .blue
                        foreground = .black
                        colorIcon = .white
                        positionIcon = 75
                        iconoType = "sun.max.fill"
                        iconoSecond = "cloud.fill"
                    }
                } else {
                    withAnimation {
                        positionX = 75
                        color = .black
                        foreground = .white
                        colorIcon = .black
                        positionIcon = 25
                        iconoType = "moon.fill"
                        iconoSecond = "sparkles"
                    }
                }
            }
    }
}

struct Switch_Previews: PreviewProvider {
    static var previews: some View {
        Switch(touchingButton: false)
    }
}
