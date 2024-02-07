//
//  Alert.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 6.02.24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDate = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server was invalid, please contact the support."),
                                              dismissButton: .default(Text("0K")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server. Please try again later."),
                                              dismissButton: .default(Text("0K")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server. If this persists, please connect to support"),
                                              dismissButton: .default(Text("0K")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time, please check your internet connection"),
                                              dismissButton: .default(Text("0K")))
}

