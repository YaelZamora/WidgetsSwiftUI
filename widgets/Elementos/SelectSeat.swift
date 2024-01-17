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
        VStack {
            LazyVGrid(columns: columns) {
                ForEach(1..<49) {item in
                    SeatButton(item: item)
                }
            }
            .padding(.bottom, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<4) { i in
                        let helper = i * 86400
                        Calendar(
                            date: Date.now.addingTimeInterval(TimeInterval(helper))
                        )
                        .padding(.horizontal, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    SelectSeat()
}
