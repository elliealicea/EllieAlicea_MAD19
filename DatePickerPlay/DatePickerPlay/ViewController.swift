//
//  ViewController.swift
//  DatePickerPlay
//
//  Created by Eleanor Alicea on 10/1/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var displayDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getDate(_ sender: UIButton) {
        // First we need to create a new instance of the NSDateFormatter
        let dateFormatter = DateFormatter()
        // Now we specify the display format, e.g. "27-08-2015
        dateFormatter.dateStyle = .long
        // Now we get the date from the UIDatePicker and convert it to a string
        let strDate = dateFormatter.string(from: datePicker.date)
        // Finally we set the text of the label to our new string with the date
        displayDate.text = strDate
    }
    
}

