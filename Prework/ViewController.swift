//
//  ViewController.swift
//  Prework
//
//  Created by Weiyuan Wu on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    var partySize = 1
    var tipPercent = 0.00
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            tipPercent = 0.15
            tipslidLable.text = "15"
        } else if sender.selectedSegmentIndex == 1 {
            tipPercent = 0.18
            tipslidLable.text = "18"
        } else if sender.selectedSegmentIndex == 2 {
            tipPercent = 0.2
            tipslidLable.text = "20"
        }
        calculateTip(segmentedControl)
    }
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        partySizeLabel.text = String(format:"%.0f", sender.value)
        partySize = Int(sender.value)
        calculateTip(segmentedControl)
    }
    @IBOutlet weak var splitAmountLabel: UILabel!
    @IBOutlet weak var tipslidLable: UILabel!
    @IBAction func slider(_ sender: UISlider) {
        tipslidLable.text = String(format:"%.0f", sender.value*100)
        tipPercent = Double(sender.value)
        calculateTip(segmentedControl)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        // Do any additional setup after loading the view.
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
        let tip = bill * tipPercent
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

