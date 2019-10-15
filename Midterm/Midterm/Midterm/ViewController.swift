//
//  ViewController.swift
//  Midterm
//
//  Created by Eleanor Alicea on 10/15/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var milesTrip: UITextField!
    @IBOutlet weak var commuteTime: UILabel!
    @IBOutlet weak var gasToPurchase: UILabel!
    @IBOutlet weak var gallonsLabel: UILabel!
    @IBOutlet weak var numberOfGallons: UISlider!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var monthSwitch: UISwitch!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
   
    @IBAction func gallonsOfGas(_ sender: UISlider) {
        let gallons=sender.value //float
        gallonsLabel.text=String(format: "%.0f", gallons) + " gallons"
    


    }
    

    @IBAction func changeImages(_ sender: UISegmentedControl) {
        
        if imageControl.selectedSegmentIndex == 0 {
            imageDisplay.image=UIImage(named: "car_icon")
            var amount : Double
            
            if milesTrip.text!.isEmpty {
                amount = 0.0
            } else {
                amount = Double(milesTrip.text!)!
            }
            let time = amount*60
            let gas = amount/24
            
            commuteTime.text = String(format: "%.0f", time) + " seconds"
            gasToPurchase.text = String(format: "%.0f", gas) + " gallons"
        }
        else if imageControl.selectedSegmentIndex == 1 {
            imageDisplay.image=UIImage(named: "bus_icon")
            var amount : Double

            if milesTrip.text!.isEmpty {
                amount = 0.0
            } else {
                amount = Double(milesTrip.text!)!
            }
            let time = (amount*60)*10
            let gas = 0
            
            commuteTime.text = String(format: "%.0f", time) + " seconds"
            gasToPurchase.text = String(format: "%.0f", gas) + " gallons"
            
        }else if imageControl.selectedSegmentIndex == 2 {
            var amount : Double

            if milesTrip.text!.isEmpty {
                amount = 0.0
            } else {
                amount = Double(milesTrip.text!)!
            }
            imageDisplay.image=UIImage(named: "bike_icon")
            let time = (amount*60)*15
            let gas = 0
            
            commuteTime.text = String(format: "%.0f", time) + " seconds"
            gasToPurchase.text = String(format: "%.0f", gas) + " gallons"
        }
    }
    
    
    @IBAction func calculateCommute(_ sender: UIButton) {
        var amount : Double
        
        if milesTrip.text!.isEmpty {
            amount = 0.0
        } else {
            amount = Double(milesTrip.text!)!
        }

            let time = amount*60
            let gas = amount/24
            
            commuteTime.text = String(format: "%.0f", time) + " seconds"
            gasToPurchase.text = String(format: "%.0f", gas) + " gallons"
      
        
        
       
        
        
    }
    
    @IBAction func monthSwitchActivate(_ sender: UISwitch) {
        if monthSwitch.isOn {
            var amount : Double
            
            if milesTrip.text!.isEmpty {
                amount = 0.0
            } else {
                amount = Double(milesTrip.text!)!
            }
            let time = (amount*60)*20
            let gas = amount/24
            
            commuteTime.text = String(format: "%.0f", time) + " seconds"
            gasToPurchase.text = String(format: "%.0f", gas) + " gallons"
        } else {
            var amount : Double
            
            if milesTrip.text!.isEmpty {
                amount = 0.0
            } else {
                amount = Double(milesTrip.text!)!
            }
            let time = amount*60
            let gas = amount/24
            
            commuteTime.text = String(format: "%.0f", time) + " seconds"
            gasToPurchase.text = String(format: "%.0f", gas) + " gallons"        }
    }
    
    
    override func viewDidLoad() {
        milesTrip.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

