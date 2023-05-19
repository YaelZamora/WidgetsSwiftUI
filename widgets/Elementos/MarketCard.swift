//
//  MarketCard.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/05/23.
//

import SwiftUI

struct MarketCard: View {
    var body: some View {
        ZStack {
            ZStack{
                AsyncImage(url: URL(string: "https://picsum.photos/id/30/250/200")).position(x: 125, y: 100)
                HStack{
                    Text("Taza para café").font(.headline)
                    Spacer()
                    Text("1")
                }.padding().frame(width: 250, height: 100).position(x: 125, y: 250)
            }.frame(width: 250, height: 300).background(.orange).cornerRadius(20)
//            RoundedRectangle(cornerRadius: 35).frame(width: 200, height: 70)
//                .position(x: 125, y: 350)
//                .foregroundColor(Color.offWhite)
//                .onTapGesture {
//                    //
//                }
//            Text("Ordenar").font(.headline).position(x: 125, y: 350).foregroundColor(.blue)
        }.frame(width: 250, height: 300)
    }
}

struct MarketCard_Previews: PreviewProvider {
    static var previews: some View {
        MarketCard()
    }
}
