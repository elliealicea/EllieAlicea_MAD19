//
//  ViewController.swift
//  Lab5
//
//  Created by Eleanor Alicea on 10/21/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    var user = Favorite()
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue){
       songLabel.text = user.favSong
      artistLabel.text = user.favArtist
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

