//
//  DetailView.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct DetailView: View {
    @Namespace var animation
    var imageNumber: Int
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://picsum.photos/id/\(imageNumber)/350"))
            Text("Lalalalala").font(.title)
            Text("Esto es una prueba")
        }
    }
}

#Preview {
    DetailView(imageNumber: 50)
}
