//
//  Order.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 11.02.24.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func remove(at index: IndexSet) {
        items.remove(atOffsets: index)
    }
}
