//
//  Models.swift
//  ContactList
//
//  Created by User on 28.02.2024.
//

struct Contact {
    
    let firstName: String
    let secondaryName: String
    var fullName: String { "\(firstName) \(secondaryName)" }
    
    let numberPhone: String
    let email: String
    
    static func getContacts() -> [Contact] {
        let dateStore = DataStore()
        return dateStore.getContacts()
    }
}
