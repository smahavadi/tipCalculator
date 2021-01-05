//
//  ViewController.swift
//  tip
//
//  Created by Suma Valli on 12/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var actualPercentLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.billAmountTextField.becomeFirstResponder()
        
    }

    @IBAction func onTap(_ sender: Any) {
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        // Get initial bill ammount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        //let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate tip and total
        //let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tip = bill * Double(tipSlider.value)
        let total = bill + tip
        let percent = Double(tipSlider.value) * 100
        
        // Upadate the tip and total labels
        actualPercentLabel.text = String(format: "Percentage: %0.2f%%", percent)
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

