//
//  NotifcationRow.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI


struct NotifcationRow: View {
    var notif:Notifcation
    var body: some View {
        HStack(spacing:20) {
            Image(systemName: notif.status == .completed ? "flag.checkered" : "fork.knife")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading) {
                Text(notif.title)
                    .fontWeight(.bold)
                Text(notif.desc)
                    .font(.body)
                    .foregroundStyle(.secondary)
            }
        }
    }
}


#Preview {
    NotifcationRow(notif: MOCK_NOTIFICATIONS[0])
}
