//
//  TabBarController.swift
//  Contact
//
//  Created by Fuhrer_SS on 12.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    let person = Person.getContactsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViewControllers(with: person)
    }
    
    private func setUpViewControllers(with person: [Person]) {
        let personaListVC = viewControllers?.first as! PersonaListTableViewController
        let contactsVC = viewControllers?.last as! ContactsTableViewController
        
        personaListVC.persons = person
        contactsVC.persons = person
    }

    

}
