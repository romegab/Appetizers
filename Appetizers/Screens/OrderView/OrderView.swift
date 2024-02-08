//
//  OrderView.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 5.02.24.
//

import SwiftUI

struct OrderView: View {
    
    @State var appetizers = MockData.appetizers
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(appetizers) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("hello")
                    } label: {
                        APButton(title: "test")
                    }
                    .padding(.bottom, 25)
                }
                
                if appetizers.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in order. \nPlease add appetizer.")
                }
            }
            .navigationTitle("🔖 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        appetizers.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
