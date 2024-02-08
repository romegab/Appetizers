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
