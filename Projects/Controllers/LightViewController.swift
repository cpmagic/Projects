
//
//  LightViewController.swift
//  Projects
//
//  Created by Thomas Hill on 9/7/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class LightViewController: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    var lblText = "Light Switch"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       switchState()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func lightSwitch(_ sender: UIButton) {
        switchState()
    }
    
    func switchState() {
        if view.backgroundColor == UIColor.black {
            view.backgroundColor = UIColor.yellow
            lblTitle.textColor = UIColor.blue
            lblTitle.text = lblText + " " + "is On"
        }
        else {
            view.backgroundColor = UIColor.black
            lblTitle.textColor = UIColor.white
            lblTitle.text = lblText + " " + "is Off"
        }
    }
    
    
    
    


}
