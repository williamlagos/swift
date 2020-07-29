//
//  ViewController.swift
//  age
//
//  Created by William Oliveira de Lagos on 28/07/20.
//  Copyright © 2020 William Oliveira de Lagos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var age: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateAge(_ sender: Any) {
        age.text = ""
    }
    
}

