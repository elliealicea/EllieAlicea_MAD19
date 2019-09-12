//
//  ViewController.swift
//  DaVinci APP
//
//  Created by Eleanor Alicea on 9/3/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var artImage: UIImageView!
    
    @IBAction func chooseArt(_ sender: UIButton) {
        if sender.tag == 1{
            artImage.image = UIImage(named: "MonaLisa")
        }
        else if sender.tag == 2{
            artImage.image = UIImage(named: "daVinci_drawing")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

