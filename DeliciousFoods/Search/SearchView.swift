//
//  SearchView.swift
//  DeliciousFoods
//
//  Created by MacBook on 2/2/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchTerm = ""
    var body: some View {
        NavigationStack {
            
        }
        .searchable(text: $searchTerm)
        .accentColor(.yellow)
    }
}

#Preview {
    SearchView()
}
