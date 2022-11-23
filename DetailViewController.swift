//
//  DetailViewController.swift
//  ContactList
//
//  Created by Lepestok Jora on 23.11.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var telLabel: UILabel!
    
    var person: NameContact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = person.title
        mailLabel.text = person.mail
        telLabel.text = person.telefon
        
        
        
    }
    
}
