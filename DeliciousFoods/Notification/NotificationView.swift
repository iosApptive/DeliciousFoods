//
//  NotificationView.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(MOCK_NOTIFICATIONS) { notif in
                        NotifcationRow(notif: notif)
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Nofication")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    NotificationView()
}



