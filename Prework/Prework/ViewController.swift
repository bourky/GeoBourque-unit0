//
//  ViewController.swift
//  Prework
//
//  Created by Geo on 8/26/22.
//  Copyright © 2022 Geo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextfield: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // Get bill amount from text field input
        let bill = Double(billAmountTextfield.text!) ?? 0
        
        // Get total tip by multiplying bill amount * tip precentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

