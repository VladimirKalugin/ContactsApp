//
//  PersonModel.swift
//  Contact
//
//  Created by Fuhrer_SS on 09.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//

struct Person: Hashable, Comparable {
    let name: String
    let lastname: String
    let email: String
    let phoneNumber: String
    
    var fullname: String {
        "\(name) \(lastname)"
    }
    
    static func <(lhs: Person, rhs: Person) -> Bool {
        lhs.name < rhs.name
    }
}

extension Person {
    static func getContactsList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let lastnames = DataManager.shared.lastnames.shuffled()
        let phones = DataManager.shared.phoneNumbres.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 1..<names.count {
            let person = Person(
                name: names[index],
                lastname: lastnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            persons.append(person)
        }
        return persons
    }
}

