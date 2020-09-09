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
    @IBOutlet weak var billAmount:UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billLabel: UILabel!
    var total = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        //Changing keyboard to only have numbers
//        billAmountTextField.keyboardType = UIKeyboardType.decimalPad
    }

    
    @IBAction func onTap(_ sender: Any) {
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        print("in calculate tip function")
        //Obtaining input from user, from text field
        billLabel.text = String(total)
        let bill = Double(total) ?? 0
        //Percentages used to calculate tip
        let tipPercentages = [0.15, 0.18, 0.20]
        //tip amount, before adding to bill
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //Tip percentage and bill become the total
        let totalBill = bill + tip
        tipPercentageLabel.text = String( format: "$%.2f", tip)
        totalLabel.text = String( format: "$%.2f", totalBill)
    }
//*************functions to handle button presses*************//
    @IBAction func button1(_ sender: Any) {
        print("1 pressed")
        total += "1"
        print("Total is now", total)
        calculateTip(total)
    }
    @IBAction func button2(_ sender: Any) {
        print("2 pressed")
        total += "2"
        print("Total is now", total)
        calculateTip(total)

    }
    @IBAction func button3(_ sender: Any) {
        print("3 pressed")
        total += "3"
        print("Total is now", total)
        calculateTip(total)

    }
    @IBAction func button4(_ sender: Any) {
        print("4 pressed")
        total += "4"
        print("Total is now", total)
        calculateTip(total)

    }
    @IBAction func button5(_ sender: Any) {
        print("5 pressed")
        total += "5"
        print("Total is now", total)
        calculateTip(total)

    }
    @IBAction func button6(_ sender: Any) {
        print("6 pressed")
        total += "6"
        print("Total is now", total)
        calculateTip(total)

    }
    @IBAction func button7(_ sender: Any) {
        print("7 pressed")
        total += "7"
        print("Total is now", total)
        calculateTip(total)

    }
    @IBAction func button8(_ sender: Any) {
        print("8 pressed")
        total += "8"
        print("Total is now", total)
        calculateTip(total)
    }
    @IBAction func button9(_ sender: Any) {
        print("9 pressed")
        total += "9"
        print("Total is now", total)
        calculateTip(total)
    }
    @IBAction func button0(_ sender: Any) {
        print("0 pressed")
        total += "0"
        print("Total is now", total)
        calculateTip(total)
    }
    @IBAction func buttonDecimal(_ sender: Any) {
            print(". pressed")
            total += "."
            print("Total is now", total)
            calculateTip(total)
    }
    
    @IBAction func clearButton(_ sender: Any) {
        total = ""
        calculateTip(total)
    }
}

