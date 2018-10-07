//
//  EightBallViewController.swift
//  Projects
//
//  Created by Thomas Hill on 9/8/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class EightBallViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var ball = 0
    
    @IBOutlet weak var imgBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shakeIt()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnShakeIt(_ sender: UIButton) {
        shakeIt()
    }
    
    func shakeIt() {
        ball = Int(arc4random_uniform(5))
        imgBall.image = UIImage(named:ballArray[ball])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeIt()
    
    }

}
