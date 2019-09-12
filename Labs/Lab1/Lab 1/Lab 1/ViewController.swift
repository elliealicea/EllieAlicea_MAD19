//
//  ViewController.swift
//  Lab 1
//
//  Created by Eleanor Alicea on 9/10/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAlbum: UILabel!
    @IBOutlet weak var albumImage: UIImageView!
    @IBAction func chooseAlbum(_ sender: UIButton) {
        if sender.tag == 1{
            albumImage.image = UIImage(named: "wildstyle");
             labelAlbum.text = ("Album released in October of 2010");
        }
        else if sender.tag == 2{
            albumImage.image = UIImage(named: "timestretch");
            labelAlbum.text = ("Album released in March of 2010");
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

