//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 8.02.24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userDate: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty, !user.lastName.isEmpty, !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else {
            return
        }
        
        do {
            let data = try JSONEncoder().encode(user)
            userDate = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        guard let userDate = userDate else {
            return
        }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userDate)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}
