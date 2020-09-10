//
//  PersonaListTableViewController.swift
//  Contact
//
//  Created by Fuhrer_SS on 09.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

class PersonaListTableViewController: UITableViewController {

    
    
    private let contactList = DataManager.getContactsList().sorted(by: <)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Persons List"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellContact", for: indexPath)
        
        let fullName = contactList[indexPath.row].name + " " + contactList[indexPath.row].lastname
        cell.textLabel?.text = fullName
        return cell
    }
    


    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoVC = segue.destination as? InfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoVC?.phoneNumber = contactList[indexPath.row].phoneNumber
        infoVC?.emailAdress = contactList[indexPath.row].email
        infoVC?.fullName = contactList[indexPath.row].name + " " + contactList[indexPath.row].lastname
    }
    

}
