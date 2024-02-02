//
//  HomeView.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HomeHeader()
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    TitleView()
                    PopularFood()
                    TodaysDeals()
                    FoodList()
                }
                
            }
        }
    }
}

#Preview {
    HomeView()
}
