//
//  TodaysDeals.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct TodaysDeals: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing:16) {
                ForEach(0..<3) { index in
                    HStack {
                        Text("1 free beverage fro orders over **$30** ")
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                    }
                    .frame(height: 140)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.yellow)
                    )
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    TodaysDeals()
}
