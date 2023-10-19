//
//  GridItems.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/05/23.
//

import SwiftUI

struct GridItems: View {
    private var iconos = ["popcorn", "person.fill", "popcorn", "person.fill", "popcorn", "person.fill"]
    private var colores = [Color.red, Color.blue, Color.orange, Color.purple, Color.green, Color.yellow]
    private var texto = ["Cine", "Perfil", "xxxx", "XXXXxx", "dasdas", "adsasd"]
    
    let data = (0...5).map{ "Item \($0)"}
    let columns = [GridItem(.adaptive(minimum: 150))]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach(0..<6) { item in
                    ZStack{
                        VStack {
                            HStack{
                                //
                            }.frame(height: 10)
                            ZStack {
                                Circle().foregroundColor(Color(hex: 0xff000000, alpha: 0.1))
                                Image(systemName: iconos[item]).font(.custom("", size: 60)).foregroundColor(.gray)
                            }
                            HStack{
                                //
                            }.frame(height: 60)
                        }
                        Text(texto[item]).frame(width: 200, height: 70).background().position(x:100, y: 150)
                    }.frame(width: 150, height: 180).background(colores[item]).cornerRadius(20, corners: [.topLeft, .topRight])
                }
            }
        }
    }
}

struct GridItems_Previews: PreviewProvider {
    static var previews: some View {
        GridItems()
    }
}
