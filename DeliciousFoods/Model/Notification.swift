//
//  Notification.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import Foundation


struct Notifcation:Identifiable {
    var id = UUID()
    var title:String
    var desc:String
    var status:OrderStatus
    
}

enum OrderStatus {
    case completed
    case delivered
}


let MOCK_NOTIFICATIONS:[Notifcation] = [
    .init(title: "Order", desc: "Congratulations your order is completed", status: .completed),
    .init(title: "Deliver", desc: "Your food has beed delivered", status: .delivered),
]
