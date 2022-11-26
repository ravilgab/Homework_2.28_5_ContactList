//
//  DetailedInformationViewController.swift
//  Homework_2.28_5_ContactList
//
//  Created by Ravil on 25.11.2022.
//

import UIKit

class DetailedInformationViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = contact.fullName
        
        nameLabel.text = contact.name
        surnameLabel.text = contact.surname
        phoneLabel.text = contact.phoneNumber
        emailLabel.text = contact.emailAddress
    }
}
