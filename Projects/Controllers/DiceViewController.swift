//
//  DiceViewController.swift
//  Projects
//
//  Created by Thomas Hill on 9/7/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {
    
    @IBOutlet weak var imgLeftDice: UIImageView!
    @IBOutlet weak var imgRightDice: UIImageView!
    
    
    var diceArrary = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var leftDice = 0
    var rightDice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnRollDice(_ sender: UIButton) {
        rollDice()
    }
    func rollDice() {
        leftDice = Int(arc4random_uniform(6))
        imgLeftDice.image = UIImage.init(named: diceArrary[leftDice])
        rightDice = Int(arc4random_uniform(6))
        imgRightDice.image = UIImage.init(named: diceArrary[rightDice])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollDice()
        }
    }
    
}
