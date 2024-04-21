//
//  InitialView.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct InitialView: View {
    @Namespace var animation
    var imageNumber: Int
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://picsum.photos/id/\(imageNumber)/150"))
        }
    }
}

#Preview {
    InitialView(imageNumber: 50)
}
