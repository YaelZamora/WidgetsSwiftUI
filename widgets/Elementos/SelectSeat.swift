//
//  SelectSeat.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 15/01/24.
//

import SwiftUI

struct SelectSeat: View {
    let columns = [GridItem(.adaptive(minimum: 50))]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(1..<51) {item in
                SeatButton(item: item)
            }
        }
    }
}

#Preview {
    SelectSeat()
}
