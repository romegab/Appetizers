//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 5.02.24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewMode = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewMode.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
                    .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewMode.getAppetizers()
        }
        .alert(item: $viewMode.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
    
    
}

#Preview {
    AppetizerListView()
}
