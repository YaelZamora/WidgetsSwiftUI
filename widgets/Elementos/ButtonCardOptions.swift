//
//  ButtonCardOptions.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 26/01/25.
//

import SwiftUI

struct ButtonCardOptions: View {
    @State var icon = "plus"
    @State var tapped = true
    @State var showAlert = false
    
    var body: some View {
        Button {
            withAnimation {
                tapped.toggle()
            }
        } label: {
            ZStack {
                if tapped {
                    VStack {
                        HStack {
                            Image(systemName: "camera").foregroundColor(.white)
                            Text("Tomar foto").foregroundColor(.white)
                        }.padding(.vertical, 2.5)
                            .onTapGesture {
                                showAlert.toggle()
                            }
                        HStack {
                            Image(systemName: "camera").foregroundColor(.white)
                            Text("Tomar foto").foregroundColor(.white)
                        }.padding(.vertical, 2.5)
                            .onTapGesture {
                                showAlert.toggle()
                            }
                        HStack {
                            Image(systemName: "camera").foregroundColor(.white)
                            Text("Tomar foto").foregroundColor(.white)
                        }.padding(.vertical, 2.5)
                            .onTapGesture {
                                showAlert.toggle()
                            }
                    }
                } else {
                    Label("", systemImage: icon)
                        .foregroundStyle(.white)
                        .labelStyle(.iconOnly)
                        .font(.title)
                }
            }.frame(
                width: (tapped) ? 200 : 75,
                height: (tapped) ? 110 : 75
            )
            .background(.blue)
            .cornerRadius(
                (tapped) ? 20 : 40
            )
            .position(
                x: (tapped) ? 125 : 75
            )
        }.foregroundStyle(.blue)
            .alert("Activate", isPresented: $showAlert) {
                
            } message: {
                Text("Por favor haz algo")
            }
    }
}

#Preview {
    ButtonCardOptions()
}

/*
 
 */
