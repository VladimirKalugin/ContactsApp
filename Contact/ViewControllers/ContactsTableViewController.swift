//
//  ContactsTableViewController.swift
//  Contact
//
//  Created by Fuhrer_SS on 09.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

//protocol CopyPersonsArray {
//    func takePersonsArray(_: [Person]) -> [Person]
//}

class ContactsTableViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Contact List"
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let nameOfContact = persons[section].fullname
        return nameOfContact
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoContact", for: indexPath)
        if indexPath.row == 0 {
            let phone = persons[indexPath.section].phoneNumber
            cell.textLabel?.text = phone
            cell.imageView?.image = UIImage(systemName: "phone")
            return cell
        } else {
            let email = persons[indexPath.section].email
            cell.textLabel?.text = email
            cell.imageView?.image = UIImage(systemName: "envelope")
            return cell
        }
    }
}

