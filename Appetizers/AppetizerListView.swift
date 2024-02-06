//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 5.02.24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
                    .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
