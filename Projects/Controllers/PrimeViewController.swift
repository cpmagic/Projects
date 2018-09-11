//
//  PrimeViewController.swift
//  Projects
//
//  Created by Thomas Hill on 9/7/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class PrimeViewController: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var txtEnterNumber: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnDoIt(_ sender: UIButton) {
        if let userEnteredString = txtEnterNumber.text {
            let userEnteredInteger = Int(userEnteredString)
            if let number = userEnteredInteger {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime {
                    lblResult.text = "\(number) is prime!"
                } else {
                    lblResult.text = "\(number) is not prime"
                }
            } else {
                lblResult.text = "Please enter a positive whole number"
            }
        }
    }
    
    

    //MARK: Keyboad Functions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
