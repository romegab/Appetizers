//
//  User.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 8.02.24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
