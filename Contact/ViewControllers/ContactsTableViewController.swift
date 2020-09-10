//
//  ContactsTableViewController.swift
//  Contact
//
//  Created by Fuhrer_SS on 09.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    
    private let contactList = DataManager.getContactsList().sorted(by: <)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Contact List"
    }

    // MARK: - Table view data source

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let nameOfContact: String
        nameOfContact = contactList[section].name + " " + contactList[section].lastname
        return nameOfContact
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoContact", for: indexPath)
        if indexPath.row == 0 {
            let phone = contactList[indexPath.section].phoneNumber
            cell.textLabel?.text = phone
            return cell
        } else {
            let email = contactList[indexPath.section].email
            cell.textLabel?.text = email
            return cell
        }

    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
