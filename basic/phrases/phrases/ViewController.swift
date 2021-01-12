//
//  ViewController.swift
//  phrases
//
//  Created by William Oliveira de Lagos on 29/07/20.
//  Copyright © 2020 William Oliveira de Lagos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phraseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func newPhrase(_ sender: Any) {
        var phrases: [String] = []
        phrases.append("Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso dos outros")
        phrases.append("Ter sucesso é falhar repetidamente, mas sem perder o entusiasmo")
        phrases.append("Não é o mais forte que sobrevive, nem o mais inteligente. Quem sobrevive é o mais disposto à mudança")
        phraseLabel.text = phrases[Int(arc4random_uniform(3))]
    }
    
}

