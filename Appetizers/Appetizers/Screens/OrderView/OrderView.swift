//
//  OrderView.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 5.02.24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("hello")
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandartButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in order. \nPlease add appetizer.")
                }
            }
            .navigationTitle("🔖 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.remove(at: offsets)
    }
}

#Preview {
    OrderView()
}
