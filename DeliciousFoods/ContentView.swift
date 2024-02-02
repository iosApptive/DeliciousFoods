//
//  ContentView.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectionTab:Tab = .home
    
    init() { UITabBar.appearance().isHidden = true }
    
    var body: some View {
        TabView(selection: $selectionTab){
            HomeView()
                .tag(Tab.home)
            
            SearchView()
                .tag(Tab.search)
            
            NotificationView()
                .tag(Tab.notification)
        }
        .overlay(alignment: .bottom) {
            CustomTabBar(tab: $selectionTab)
        }
    }
}

#Preview {
    ContentView()
}
