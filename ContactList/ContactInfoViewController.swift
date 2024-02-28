//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by User on 28.02.2024.
//

import UIKit

final class ContactInfoViewController: UIViewController {

    @IBOutlet var numberPhoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberPhoneLabel.text = contact.numberPhone
        emailLabel.text = contact.email
        title = contact.fullName

    }

}
