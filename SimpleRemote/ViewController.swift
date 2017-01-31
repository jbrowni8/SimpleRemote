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
    
    @IBAction func powerOn(_ sender: UISwitch) {
        power.text = (sender.isOn ? "On" : "Off")
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

