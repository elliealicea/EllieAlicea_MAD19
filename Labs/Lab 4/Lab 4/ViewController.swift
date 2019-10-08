//
//  ViewController.swift
//  Lab 4
//
//  Created by Eleanor Alicea on 10/1/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var ticketPrice: UITextField!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var totalAmount: UILabel!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        return true
    }
    
    @IBAction func updatePeople(_ sender: UIStepper) {
        if peopleStepper.value == 1 {
            peopleLabel.text = "1 person"
        } else {
            peopleLabel.text = String(format: "%.0f", peopleStepper.value) + " people"
        }
        updateAmount()
    }
    
    func updateAmount() {
    var amount: Float
        if ticketPrice.text!.isEmpty {
            amount = 0.0
        } else {
            amount = Float(ticketPrice.text!)!
        }
        
        let numberOfPeople = peopleStepper.value
        var personTotal : Float = 0.0
        if numberOfPeople > 0 {
            personTotal = amount*Float(numberOfPeople)
        } else {
            let alert=UIAlertController(title: "Warning", message: "The number of people must be greater than 0", preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(cancelAction)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {action in self.peopleStepper.value=1
                self.peopleLabel.text? = "1 person"
                self.updateAmount()
                
            })
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle=NumberFormatter.Style.currency
        totalAmount.text=currencyFormatter.string(from: NSNumber(value: personTotal))
    }
       
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateAmount()
    }
    
        override func viewDidLoad() {
            
            ticketPrice.delegate=self
            
            super.viewDidLoad()
            
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
            view.addGestureRecognizer(tap)
        }
        @objc func dismissKeyboard() {
            view.endEditing(true)
        }
}


