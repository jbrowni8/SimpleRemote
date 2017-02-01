//
//  ViewController.swift
//  SimpleRemote
//
//  Created by James Browning on 1/30/17.
//  Copyright © 2017 James Browning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var power: UILabel!
    @IBOutlet weak var vol: UILabel!
    @IBOutlet weak var chan: UILabel!
    var digits : String = ""
    var counter = 0
    
    @IBAction func powerOn(_ sender: UISwitch) {
        power.text = (sender.isOn ? "On" : "Off")
        if power.text=="On" {
            chan.text = "\(000)"
        } else {
            vol.text = "\(0)"
            chan.text = "Off"
        }
    }
    
    @IBAction func deltaVol(_ sender: UISlider) {
        if power.text=="On" {
            vol.text = "\(Int(sender.value))"
        }
    }
    
    @IBAction func chanChange(_ sender: UIButton) {
        if power.text=="On"{
            if let text = sender.titleLabel?.text {
                if let currentChan = Int(chan.text!) {
                    if text == "Ch+" && currentChan < 999{
                        chan.text = "\(currentChan+1)"
                    } else if text == "Ch-" && currentChan > 0 {
                        chan.text = "\(currentChan-1)"
                    }
                }
            }
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if power.text == "On"{
            if let digit = sender.titleLabel?.text {
                counter += 1
                digits.append(digit)
            }
            if counter == 3 {
                chan.text = "\(digits)"
                digits = ""
                counter = 0
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

