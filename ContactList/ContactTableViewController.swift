//
//  ViewController.swift
//  ContactList
//
//  Created by User on 28.02.2024.
//

import UIKit

final class ContactTableViewController: UITableViewController {

    let contacts = Contact.getContacts()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contactInfoVC = segue.destination as? ContactInfoViewController
        contactInfoVC?.contact = contacts[indexPath.row]
    }

}

// MARK: - UITableViewDataCource
extension ContactTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
}

extension ContactTableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        return cell
    }
}
