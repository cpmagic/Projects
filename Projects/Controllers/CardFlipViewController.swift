//
//  CardFlipViewController.swift
//  Projects
//
//  Created by Thomas Hill on 9/9/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class CardFlipViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            lblFlipCount.text = "Flip Count: \(flipCount)"
        }
    }
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBOutlet var btnCards: [UIButton]!
    @IBOutlet weak var lblFlipCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = btnCards.index(of: sender) {  //Read from array - Unwrap  Optional
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else {
            print("No Card")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = UIColor.orange
        }
        else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = UIColor.white
        }
    }

}
