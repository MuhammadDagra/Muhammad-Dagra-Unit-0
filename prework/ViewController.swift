//
//  ViewController.swift
//  prework
//
//  Created by Moe • on 8/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLable: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLable: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //doing any additional functions
    }
    

    @IBAction func calculateTIp(_ sender: Any)
    {
        let bill = Double (billAmountTextField.text!) ?? 0
        
        let tipPercentage = [0.15,0.18,0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLable.text = String(format:"$%.2f",tip)
        totalLable.text = String(format:"$%.2f",total)
    }
    
}
