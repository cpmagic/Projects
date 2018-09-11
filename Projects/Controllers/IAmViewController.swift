//
//  IAM.swift
//  Projects
//
//  Created by Thomas Hill on 9/6/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class IAM: UIViewController {
    
    @IBOutlet weak var lblTopText: UILabel!
    @IBOutlet weak var btnImage: UIButton!
    
    var tomPhoto = true

    override func viewDidLoad() {
        super.viewDidLoad()
        switchState()
    }
    
    @IBAction func btnPhoto(_ sender: UIButton) {
        switchState()
    }
    
    func switchState() {
        if tomPhoto == true {
            lblTopText.text = "I am Tom"
            btnImage.setImage(UIImage(named:"Tom"), for: .normal)
            tomPhoto = false
        }
        else {
            lblTopText.text = "I am Rich"
            btnImage.setImage(UIImage(named:"Diamond"), for: .normal)
            tomPhoto = true
        }
    }
    

}
