//
//  DataManeger.swift
//  Contact
//
//  Created by Fuhrer_SS on 09.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//

class DataManager {
    var names = ["Andru", "Bruse", "Angelo", "Clark", "Michael",
                 "Broke", "Bob", "Klin", "Clation", "Anna", "Mari",
                 "Lena", "Sara", "Shon", "Donald", "Ron", "Mark",
                 "Reigon", "Tom", "Jordan", "Bill"].shuffled()
    let lastnames = ["Black", "White", "Green", "Trump", "Smith",
                     "Shark", "Heisenberg", "Hilfert", "Bonoparte",
                     "Conarri", "Johnson", "Williams", "Jones", "Miller",
                     "Thompson", "Scott", "Cooper", "Edwards", "Turner",
                     "Morgan", "Hill"].shuffled()
    let emails = ["101@gmail.com", "102@gmail.com", "103@gmail.com",
                 "104@gmail.com", "105@gmail.com", "106@gmail.com",
                 "107@gmail.com", "108@gmail.com", "110@gmail.com",
                 "111@gmail.com", "120@gmail.com", "130@gmail.com",
                 "140@gmail.com", "150@gmail.com", "160@gmail.com",
                 "170@gmail.com", "170@gmail.com", "180@gmail.com",
                 "190@gmail.com", "200@gmail.com", "201@gmail.com"].shuffled()
    let phoneNumbres = ["890-101", "890-102", "890-103", "890-104",
                        "890-105", "890-106", "890-107", "890-108",
                        "890-109", "890-120", "890-130", "353-101",
                        "353-102", "353-103", "353-104", "353-105",
                        "353-106", "353-107", "353-108", "353-109",
                        "353-200"].shuffled()
    
    static func getContactsList() -> [Person] {
        var setOfContacts = [Person]()
        let newData = DataManager.init()
        for item in 0...newData.names.count - 1 {
            setOfContacts.append(Person(name: newData.names[item],
                                        lastname: newData.lastnames[item],
                                        email: newData.emails[item],
                                        phoneNumber: newData.phoneNumbres[item]))
        }
        return setOfContacts
    }
    
}


 
    




