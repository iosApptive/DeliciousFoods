//
//  Food.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import Foundation

struct Food:Identifiable {
    var id = UUID()
    var thumbnail:String
    var name:String
    var desc:String
    var price:Double
    var like = false
    
    
    mutating func likeFood() {
        self.like.toggle()
    }
}


let Food_Mock_Up_Data:[Food] = [
    .init(thumbnail: "burger", name: "Hamburger", desc: "lorum ipsum dolor sit", price: 12.14),
    .init(thumbnail: "pizza", name: "Cheese Pizza", desc: "lorum ipsum dolor sit", price: 24.65),
    .init(thumbnail: "salad", name: "Salad", desc: "lorum ipsum dolor sit", price: 8.23),
    .init(thumbnail: "beef", name: "Beef Steak", desc: "lorum ipsum dolor sit", price: 32.99),
]
