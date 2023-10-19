//
//  TabBar.swift
//  widgets
//
//  Created by Yael Javier Zamora Moreno on 19/05/23.
//

import SwiftUI

struct TabBar: View {
    @State private var selectedTab = 1
    
    var body: some View {
        
        ZStack {
            TabView(selection: $selectedTab){
                Scroll().tag(1)
                ActionButton(size: 85, icon: "plus", position: 2, color: .purple).tag(2)
                Text("Shalalala").tag(3)
            }
            VStack {
                Spacer()
                HStack{
                    myTabButton(title: "Home", tags: 1, icon: "house")
                    myTabButton(title: "Options", tags: 2, icon: "slider.horizontal.3")
                    myTabButton(title: "Profile", tags: 3, icon: "person")
                }.frame(width: 300, height: 75).background(.red).cornerRadius(30)
            }
        }
    }
    
    func myTabButton(title: String, tags: Int, icon: String) -> some View {
        VStack{
            Button(title){ withAnimation{ selectedTab = tags } }
                .frame(maxWidth: .infinity)
                .foregroundColor(selectedTab == tags ? .white : .secondary)
            
            Image(systemName: icon).foregroundColor(selectedTab == tags ? .white : .secondary)
            
            Color(selectedTab == tags ? .blue : .clear)
                .frame(width: 30, height: 5).cornerRadius(3)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
