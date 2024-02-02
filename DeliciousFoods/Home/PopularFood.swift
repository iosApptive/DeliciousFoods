//
//  PopularFood.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct PopularFood: View {
    private let images = ["image","image1","image2","image3"]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing:16) {
                ForEach(0..<images.count,id: \.self) { index in
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(.systemGray4),lineWidth: 1)
                        .frame(width: 100, height: 100)
                        .overlay(alignment: .center) {
                            Image(images[index])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                        }
                }
            }.padding(.horizontal)
        }
        .frame(height: 100)
            
    }
}

#Preview {
    PopularFood()
}
