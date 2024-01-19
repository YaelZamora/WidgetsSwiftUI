//
//  TicketPay.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/01/24.
//

import SwiftUI

struct TicketPay: View {
    @State var quantity: Int
    
    var body: some View {
        VStack {
            Text("Cantidad = \(quantity)")
        }
    }
}

#Preview {
    TicketPay(quantity: 2)
}
