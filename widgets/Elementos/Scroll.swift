//
//  Scroll.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/05/23.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            Text("Primeros estrenos del mes").font(.headline)
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<10){ item in
                        MarketCard()
                    }
                }.frame(height: 310).padding()
            }
            Text("Puto el que lo lea").font(.title).bold()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<10){_ in
                        Switch(touchingButton: true)
                    }
                }.padding()
            }
        }
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
