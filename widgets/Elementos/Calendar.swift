//
//  Calendar.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 16/01/24.
//

import SwiftUI

struct Calendar: View {
    @State var date = Date()
    
    var body: some View {
        Button {
            //
        } label: {
            VStack {
                Text(date, format: .dateTime.day())
                    .font(.title)
                    .bold()
                Text(date, format: .dateTime.month())
            }
        }
        .frame(width: 40, height: 60)
        .padding()
        .background(.purple)
        .cornerRadius(20)
        .foregroundColor(.white)
    }
}

#Preview {
    Calendar()
}
