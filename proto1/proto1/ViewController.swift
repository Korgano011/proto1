//
//  ViewController.swift
//  proto1
//
//  Created by Thomas Daly on 11/19/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "The Open Cult"
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIBarButtonItem) {
        print("Add new member")
performSegue(withIdentifier: "memberTable", sender: self)
    }
    
}

