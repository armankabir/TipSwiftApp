//
//  ViewController.swift
//  tip
//
//  Created by Arman Kabir on 9/5/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var billAmount:UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Changing keyboard to only have numbers
        billAmountTextField.keyboardType = UIKeyboardType.decimalPad
    }

    
    @IBAction func onTap(_ sender: Any) {
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Obtaining input from user, from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        //Percentages used to calculate tip
        let tipPercentages = [0.15, 0.18, 0.20]
        //tip amount, before adding to bill
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //Tip percentage and bill become the total
        let total = bill + tip
        tipPercentageLabel.text = String( format: "$%.2f", tip)
        totalLabel.text = String( format: "$%.2f", total)
        
    }

}

