//
//  SeatButton.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 15/01/24.
//

import SwiftUI

struct SeatButton: View {
    @State var item = 0
    @State var free = Bool.random()
    @State private var showAlert = false
    @State var colorLibre = Color.green
    @State var colorOcupado = Color.red
    @State var contador = 0
    
    var body: some View {
        Button {
            tapped()
        } label: {
            Text("\(item)")
        }
        .frame(width: 50, height: 50)
        .background((free) ? colorLibre : colorOcupado)
        .foregroundColor(.white)
        .cornerRadius(10)
        .alert("Asiento ocupado", isPresented: $showAlert) {
            //
        } message: {
            Text("Selecciona otro asiento")
        }
    }
    
    func tapped() {
        if free {
            if colorLibre == .green {
                colorLibre = .blue
                contador += 1
            } else {
                colorLibre = .green
                contador -= 1
            }
        } else {
            showAlert.toggle()
        }
    }
}

#Preview {
    SeatButton(free: true)
}
