//
//  ContactListTableViewController.swift
//  Homework_2.28_5_ContactList
//
//  Created by Ravil on 25.11.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {

    var contacts = Contact.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(contacts)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)

        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        content.secondaryText = contact.phoneNumber
        content.secondaryTextProperties.color = UIColor.gray
        
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailedInformationVC = segue.destination as? DetailedInformationViewController else { return }
        
        detailedInformationVC.contacts = contacts
        
    }
}
