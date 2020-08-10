//
//  ViewController.swift
//  tipcalc
//
//  Created by Lewhat Aylay on 8/9/20.
//  Copyright © 2020 Lewhat Aylay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any)
    {
        print ("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // get bill amount
        let bill  = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
       
        //calculate the tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //calculate the tip and total labesl
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

