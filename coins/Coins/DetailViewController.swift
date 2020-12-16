//
//  DetailViewController.swift
//  coins
//
//  Created by William Oliveira de Lagos on 24/04/2021.
//

import UIKit

class DetailViewController: UIViewController {

    var random: Int!
    @IBOutlet weak var coin: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if random == 0 {
            // Cara
            coin.image = #imageLiteral(resourceName: "moeda_cara")
        } else {
            // Coroa
            coin.image = #imageLiteral(resourceName: "moeda_coroa")
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
