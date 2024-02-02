//
//  TitleView.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack {
            Text("Delicious")
                .font(.title)
            Text("Food")
                .foregroundStyle(.yellow)
                .font(.title)
            Spacer()
        }
        .padding([.horizontal,.top])
    }
}

#Preview {
    TitleView()
}
