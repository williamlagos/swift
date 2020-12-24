//
//  ViewController.swift
//  astro
//
//  Created by William Oliveira de Lagos on 24/04/2021.
//

import UIKit

class ViewController: UITableViewController {

    var signos: [String] = [
        "Áries",
        "Touro",
        "Gêmeos",
        "Câncer",
        "Leão",
        "Virgem",
        "Libra",
        "Escorpião",
        "Sagitário",
        "Capricórnio",
        "Aquário",
        "Peixes"
    ]
    var significadoSignos: [String] = [
        "O ariano é uma pessoa cheia de energia e entusiasmo",
        "...",
        "...",
        "...",
        "...",
        "...",
        "...",
        "...",
        "...",
        "...",
        "...",
        "...",
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        return celula
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

