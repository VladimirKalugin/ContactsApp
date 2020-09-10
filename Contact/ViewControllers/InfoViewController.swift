//
//  ViewController.swift
//  Contact
//
//  Created by Fuhrer_SS on 09.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//
import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLable: UILabel!
   
    var phoneNumber: String!
    var emailAdress: String!
    var fullName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
        navigationItem.title = fullName
        
        phoneLabel.text = "Phone: \(phoneNumber ?? "")"
        emailLable.text = "Email: \(emailAdress ?? "")"
    }
}

