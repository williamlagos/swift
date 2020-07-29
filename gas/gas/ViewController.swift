//
//  ViewController.swift
//  gas
//
//  Created by William Oliveira de Lagos on 29/07/20.
//  Copyright © 2020 William Oliveira de Lagos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var alcoholPrice: UITextField!
    @IBOutlet weak var gasPrice: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func validateFields(alcPrice: String, gasPrice: String) -> Bool {
        var validated = true
        if alcPrice.isEmpty {
            validated = false
        } else if gasPrice.isEmpty {
            validated = false
        }
        return validated
    }
    
    func calculateBestPrice(alcPrice: String, gasPrice: String) {
        if let alcValue = Double(alcPrice) {
            if let gasValue = Double(gasPrice) {
                /* Do the calculation (alcPrice / gasPrice)
                 * If result >= 0.7 it's better to use gas than
                 * alcohol, either it's better to use alcohol
                 */
                let priceResult = alcValue / gasValue
                if priceResult >= 0.7 {
                    self.resultsLabel.text = "Melhor utilizar gasolina!"
                } else {
                    self.resultsLabel.text = "Melhor utilizar álcool!"
                }
            }
        }
        
    }
    
    @IBAction func calculatePrice(_ sender: Any) {
        if let alcoPrice = alcoholPrice.text {
            if let gasoPrice = gasPrice.text {
                let result = self.validateFields(alcPrice: alcoPrice, gasPrice: gasoPrice)
                if result {
                    self.calculateBestPrice(alcPrice: alcoPrice, gasPrice: gasoPrice)
                } else {
                    resultsLabel.text = "Digite os preços para calcular!"
                }
            }
        }
    }
    

}

