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
//        VStack(alignment: .leading, spacing: 0){
//            HStack{
//                tabButton(title: "One", tags: 1)
//                tabButton(title: "Two", tags: 2)
//                tabButton(title: "Three", tags: 3)
//            }.padding(.top)
//                .font(.headline)
//            TabView(selection: $selectedTab){
//                Text("First Tab").font(.largeTitle).tag(1)
//                Text("Second Tab").font(.largeTitle).tag(2)
//                Text("Third Tab").font(.largeTitle).tag(3)
//            }
//        }
        
        ZStack {
            TabView(selection: $selectedTab){
                Text("dasdas").tag(1)
                Text("dasdassvea").tag(2)
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
    
    func tabButton(title: String, tags: Int) -> some View{
        VStack{
            Button(title){ withAnimation{ selectedTab = tags } }
                .frame(maxWidth: .infinity)
                .foregroundColor(selectedTab == tags ? .teal : .secondary)
            
            Color(selectedTab == tags ? .blue : .clear)
                .frame(height: 4)
                .padding(.horizontal)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
