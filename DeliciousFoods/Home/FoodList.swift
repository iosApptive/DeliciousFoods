//
//  FoodList.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct FoodList: View {
    private let columns = [
        GridItem(.adaptive(minimum: 160))
    ]
    var body: some View {
        VStack(alignment:.leading) {
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(Food_Mock_Up_Data) { food in
                    FoodRow(food: food)
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    FoodList()
}


struct FoodRow:View {
    @State var food:Food
    var body: some View {
        VStack(alignment:.leading) {
            Image(food.thumbnail)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            HStack {
                VStack(alignment:.leading,spacing: 8) {
                    Text(food.name)
                        .fontWeight(.semibold)
                    Text(food.desc)
                        .foregroundStyle(.secondary)
                        .font(.footnote)
                    HStack {
                        Text("$\(food.price, specifier: "%.2f")")
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: food.like ? "heart.fill" : "heart")
                            .foregroundColor(food.like ? .red : .black)
                            .onTapGesture {
                                food.likeFood()
                            }
                    }
                }
            }
        }
        .padding()
        //.background(.red)
    }
}
