//
//  CustomTabBar.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

enum Tab:CaseIterable {
    case home
    case search
    case notification
    case setting
    
    var icon:String {
        switch self {
        case .home:
            return "house"
        case .search:
            return "magnifyingglass"
        case .notification:
            return "bell"
        case .setting:
            return "gearshape"
        }
    }
}


struct CustomTabBar: View {
    @Binding var tab:Tab
    var body: some View {
        VStack(spacing:0) {
            Divider()
            HStack {
                ForEach(Tab.allCases,id: \.self) { tab in
                    HStack {
                        Spacer()
                        Image(systemName: tab.icon)
                            .font(.title2)
                            .foregroundStyle(self.tab == tab ? .yellow : .gray)
                            .onTapGesture {
                                self.tab = tab
                            }
                        Spacer()
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(.white)
        }
    }
}

#Preview {
    CustomTabBar(tab: .constant(.home))
}
