//
//  memberViewController.swift
//  proto1
//
//  Created by Thomas Daly on 11/19/25.
//

import UIKit

class memberViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)
        let member = members[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Name: \(member.name)"
        case 1:
            cell.textLabel?.text = "Phone: \(member.phone)"
        case 2:
            cell.textLabel?.text = "Email: \(member.email)"
        case 3:
            cell.textLabel?.text = "Reason: \(member.reason)"
        default:
            cell.textLabel?.text = ""
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            members.remove(at: indexPath.section)
            tableView.deleteSections(IndexSet(integer: indexPath.section), with: .fade)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return members.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Member \(section + 1)"
    }
    
    var members = [Member]()
    
    @IBOutlet weak var membersTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        membersTable.delegate = self
        membersTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    @IBAction func memberAdd(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Enter your information", message: nil, preferredStyle: .alert)
        
        alert.addTextField { $0.placeholder = "Enter your name"}
        alert.addTextField { $0.placeholder = "Enter your phone number"}
        alert.addTextField { $0.placeholder = "Enter your email address"}
        alert.addTextField { $0.placeholder = "Reason for membership"}
        
        let addAction = UIAlertAction(title: "Add  Information", style: .default) { (action) in
            let name = alert.textFields![0].text ?? ""
            let phone = alert.textFields![1].text ?? ""
            let email = alert.textFields![2].text ?? ""
            let reason = alert.textFields![3].text ?? ""
            
            let newMember = Member(name: name, phone: phone, email: email, reason: reason)
            
            self.members.append(newMember)
            self.membersTable.reloadData()
            }
        alert.addAction(addAction)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        }
    
    }
                
