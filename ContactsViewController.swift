//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Lepestok Jora on 23.11.2022.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    
    var selectPerson: NameContact?
    private var contactList = NameContact.random()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = contactList[indexPath.row].title
        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectPerson = contactList[indexPath.row]
        self.performSegue(withIdentifier: "showDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.person = selectPerson
            
        }
            
            
    }

}
