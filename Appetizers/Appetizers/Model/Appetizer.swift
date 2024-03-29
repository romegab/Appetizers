//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 5.02.24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "test appetizer", description: "description for appetizer", price: 12.80, imageURL: "", calories: 300, protein: 20, carbs: 12)
    static let sampleAppetizer1 = Appetizer(id: 0002, name: "test appetizer", description: "description for appetizer", price: 12.80, imageURL: "", calories: 300, protein: 20, carbs: 12)
    static let sampleAppetizer2 = Appetizer(id: 0003, name: "test appetizer", description: "description for appetizer", price: 12.80, imageURL: "", calories: 300, protein: 20, carbs: 12)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer1, sampleAppetizer2]
}
