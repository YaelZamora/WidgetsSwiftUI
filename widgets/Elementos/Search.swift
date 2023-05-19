//
//  Search.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/05/23.
//

import SwiftUI

struct Search: View {
    @State private var busqueda = ""
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass").foregroundColor(.cyan)
            TextField("Buscar...", text: $busqueda)
            Image(systemName: "slider.horizontal.3").padding()
                .background(.green)
                .cornerRadius(10)
        }.padding([.leading], 10)
            .frame(width: 300, height: 50)
            .background(Color.offWhite)
            .cornerRadius(10)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
