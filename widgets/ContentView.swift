//
//  ContentView.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/05/23.
//

import SwiftUI

extension Color{
    init(hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha

        )
    }
    
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.offWhite.ignoresSafeArea()
            Switch(touchingButton: true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
