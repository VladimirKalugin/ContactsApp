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
    
    static func <(lhs: Person, rhs: Person) -> Bool {
        lhs.name < rhs.name
    }
}


