//
//  ViewController.swift
//  random
//
//  Created by William Oliveira de Lagos on 29/07/20.
//  Copyright © 2020 William Oliveira de Lagos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberGenerated: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func generateNumber(_ sender: Any) {
        let number = arc4random_uniform(11)
        numberGenerated.text = String(number)
    }
    

}

