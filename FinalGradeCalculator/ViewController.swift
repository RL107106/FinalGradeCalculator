//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by NATHAN GEHRKE on 11/12/18.
//  Copyright © 2018 Nathan Gehrke. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
   
    
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var currentGradeTextfield: UITextField!
    @IBOutlet weak var examWeightTextfield: UITextField!
    @IBOutlet weak var necessaryGradeLabel: UILabel!
    @IBOutlet weak var extraCreditLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onCalcGradeTapped(_ sender: Any) {
        guard let desiredGrade = Double(desiredGradeTextField.text!) else {return}
        guard let currentGrade = Double(currentGradeTextfield.text!) else {return}
        guard let examWeight = Double(examWeightTextfield.text!) else {return}
        let necessaryGrade = (100.0 * desiredGrade - (100.0 - examWeight) * currentGrade) / examWeight
        necessaryGradeLabel.text = String(necessaryGrade)
        
        if necessaryGrade <= 100.0 {
            self.view.backgroundColor = .green
            self.view.backgroundColor = .red
            
            extraCreditLabel.text = "Ask the professor to find a way to succeed"
        }
    }

}
