//
//  ViewController.swift
//  DatePicker
//
//  Created by Eleanor Alicea on 9/30/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
    }
        
        func ShowAlert(dateTime : String) {
            let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    


    @IBAction func getCurrentDate(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from:datePicker.date)
        ShowAlert(dateTime: selectedDate)
    }
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from:sender.date)
        ShowAlert(dateTime: selectedDate)
    }
}

