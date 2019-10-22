//
//  Scene2ViewController.swift
//  Lab5
//
//  Created by Eleanor Alicea on 10/21/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var userSong: UITextField!
    @IBOutlet weak var userArtist: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneFavs"{
            let scene1ViewController = segue.destination as! ViewController
            //check to see that text was entered in the textfields
            if userSong.text!.isEmpty == false{
                scene1ViewController.user.favSong = userSong.text
            }
            if userArtist.text!.isEmpty == false{
                scene1ViewController.user.favArtist = userArtist.text
            }
        }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        userSong.delegate=self
        userArtist.delegate=self
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
