//
//  ViewController.swift
//  Lab 3
//
//  Created by Eleanor Alicea on 9/23/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // I followed your beatles example exactly and looked at the code and had all of the same information, but couldn't get the auto layout to work. Same thing with horizontal orientation, I kept losing things off the screen and couldn't grab them to move them anywhere. Then, if they popped up, it would mess everything else up, it was just not working for me this time. Would love some help if you have any tips.
    
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var colorSwitch: UISwitch!
    
    func updateImage(){
        if imageControl.selectedSegmentIndex == 0 {
            mainLabel.text = "Young Boys"
            mainImage.image = UIImage(named: "1d2.jpg")
        }else if imageControl.selectedSegmentIndex == 1 {
            mainLabel.text = "Grown Men"
            mainImage.image = UIImage(named: "1D.jpg")
        }
    }
    func updateCaps(){
        if capitalSwitch.isOn {
            mainLabel.text = mainLabel.text?.uppercased()
        } else {
            mainLabel.text = mainLabel.text?.lowercased()
        }
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
        
    }
    
    @IBAction func updateType(_ sender: UISwitch) {
       updateCaps()
        
    }
    
    @IBAction func changeColor(_ sender: UISwitch) {
        if colorSwitch.isOn{
            mainLabel.textColor = UIColor.red
        } else {
            mainLabel.textColor = UIColor.black
    }
    }
    
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize=sender.value
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
      mainLabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

