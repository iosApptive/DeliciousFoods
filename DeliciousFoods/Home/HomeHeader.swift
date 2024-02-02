//
//  HomeHeader.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "line.3.horizontal.decrease")
            Spacer()
            Image(systemName: "magnifyingglass")
        }
        .padding(.horizontal)
    }
}

#Preview {
    HomeHeader()
}
