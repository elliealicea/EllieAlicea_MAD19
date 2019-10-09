//
//  ViewController.swift
//  ZO
//
//  Created by Eleanor Alicea on 10/1/19.
//  Copyright © 2019 Eleanor Alicea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var displayDate: UILabel!
    @IBOutlet weak var displaySign: UIImageView!

    
    @IBAction func getDate(_ sender: UIButton) {

        let components = datePicker.calendar.dateComponents([.day, .month, .year], from: datePicker.date)
        let day = components.day
        let month = components.month
        
        if let zoMonth = month, let zoDay = day {
        switch zoMonth {
            //January
        case 1: if zoDay <= 20 {
            displayDate.text = "Capricorn \n You have an inner state of independence that enables progress in your personal & professional life."
            displaySign.image = UIImage(named: "capricorn")
        } else if zoDay >= 21 {
            displayDate.text = "Aquarius \n You are a deep thinker and highly intellectual person who loves helping others."
            displaySign.image = UIImage(named: "aquarius")
            }
            //February
        case 2: if zoDay <= 19 {
            displayDate.text = "Aquarius \n You are a deep thinker and highly intellectual person who loves helping others."
            displaySign.image = UIImage(named: "aquarius")
            } else if zoDay >= 20 {
            displayDate.text = "Pisces \n You are selfless and always willing to help others, without hoping for anything in return."
            displaySign.image = UIImage(named: "pisces")
            }
            //March
        case 3: if zoDay <= 20 {
            displayDate.text = "Pisces \n You are selfless and always willing to help others, without hoping for anything in return."
            displaySign.image = UIImage(named: "pisces")
            } else if zoDay >= 21 {
            displayDate.text = "Aries \n Continuously looking for dynamic, speed and competition, you always have to be first in everything."
            displaySign.image = UIImage(named: "aries")
            }
            //April
        case 4: if zoDay <= 20 {
            displayDate.text = "Aries \n Continuously looking for dynamic, speed and competition, you always have to be first in everything."
            displaySign.image = UIImage(named: "aries")
        } else if zoDay >= 21 {
            displayDate.text = "Taurus \n Practical and well-grounded, you feel the need to always be surrounded by love and beauty."
            displaySign.image = UIImage(named: "taurus")
            }
            //May
        case 5: if zoDay <= 21 {
            displayDate.text = "Taurus \n Practical and well-grounded, you feel the need to always be surrounded by love and beauty."
            displaySign.image = UIImage(named: "taurus")
        } else if zoDay >= 22 {
            displayDate.text = "Gemini \n Expressive and quick-witted, you represent two different personalities in one."
            displaySign.image = UIImage(named: "gemini")
            }
            //June
        case 6: if zoDay <= 21 {
            displayDate.text = "Gemini \n Expressive and quick-witted, you represent two different personalities in one."
            displaySign.image = UIImage(named: "gemini")
        } else if zoDay >= 22 {
            displayDate.text = "Cancer \n Deeply emotional and sensitive, you care about matters of the family and your home. "
            displaySign.image = UIImage(named: "cancer")
            }
            //July
        case 7: if zoDay <= 22 {
            displayDate.text = "Cancer \n Deeply emotional and sensitive, you care about matters of the family and your home."
            displaySign.image = UIImage(named: "cancer")
        } else if zoDay >= 23 {
            displayDate.text = "Leo \n Dramatic, creative, self-confident, and dominant, you are a natural born leader."
            displaySign.image = UIImage(named: "leo")
            }
            //August
        case 8: if zoDay <= 23 {
            displayDate.text = "Leo \n Dramatic, creative, self-confident, and dominant, you are a natural born leader."
            displaySign.image = UIImage(named: "leo")
        } else if zoDay >= 24 {
            displayDate.text = "Virgo \n Paying attention to small details, your approach to life ensures that nothing is left to chance."
            displaySign.image = UIImage(named: "virgo")
            }
            //September
        case 9: if zoDay <= 22 {
            displayDate.text = "Virgo \n Paying attention to small details, your approach to life ensures that nothing is left to chance."
            displaySign.image = UIImage(named: "virgo")
        } else if zoDay >= 23 {
            displayDate.text = "Libra \n You are fascinated by balance and symmetry, you are in a constant chase for justice and equality."
            displaySign.image = UIImage(named: "libra")
            }
            //October
        case 10: if zoDay <= 22 {
            displayDate.text = "Libra \n You are fascinated by balance and symmetry, you are in a constant chase for justice and equality."
            displaySign.image = UIImage(named: "libra")
        } else if zoDay >= 23 {
            displayDate.text = "Scorpio \n  Passionate and assertive, you are a great leader, always aware of the situation and resourceful."
            displaySign.image = UIImage(named: "scorpio")
            }
            //November
        case 11: if zoDay <= 21 {
            displayDate.text = "Scorpio \n  Passionate and assertive, you are a great leader, always aware of the situation and resourceful."
            displaySign.image = UIImage(named: "scorpio")
        } else if zoDay >= 22 {
            displayDate.text = "Sagittarius \n Curious and energetic, your open mind motivates you to wander in search of the meaning of life."
            displaySign.image = UIImage(named: "sagittarius")
            }
            //December
        case 12: if zoDay <= 21 {
            displayDate.text = "Sagittarius \n Curious and energetic, your open mind motivates you to wander in search of the meaning of life."
            displaySign.image = UIImage(named: "sagittarius")
        } else if zoDay >= 22 {
            displayDate.text = "Capricorn \n You have an inner state of independence that enables progress in your personal & professional life."
            displaySign.image = UIImage(named: "capricorn")
            }
       default:
            displayDate.text = "Invalid"
            }
    }

        }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}



//https://stackoverflow.com/questions/34688752/getting-date-components-from-uidatepicker
