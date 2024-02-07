//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 6.02.24.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers {result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        alertItem = AlertContext.invalidDate
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
    
}
