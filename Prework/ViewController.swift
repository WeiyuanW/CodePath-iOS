//
//  ViewController.swift
//  Prework
//
//  Created by Weiyuan Wu on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    var partySize = 1
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        partySizeLabel.text = String(format:"%.0f", sender.value)
        partySize = Int(sender.value)
        calculateTip(tipControl)
    }
    @IBOutlet weak var splitAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Show keyboard by default
        billAmountTextField.becomeFirstResponder()
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by mutiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let splitAmount = total / Double(partySize)
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format:"$%.2f", total)
        // Update split Amount (per person)
        splitAmountLabel.text = String(format:"$%.2f", splitAmount)
        
        fadeInTotal()
    }
    
    func fadeInTotal() {
        self.totalLabel.alpha = 0
        UIView.animate(withDuration: 1, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn,
            animations: {
                self.totalLabel.alpha = 1
            }, completion: nil )
    }
    
}

