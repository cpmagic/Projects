//
//  KeyboardViewController.swift
//  Projects
//
//  Created by Thomas Hill on 10/7/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class KeyboardViewController: UIViewController, UITextFieldDelegate  {

    var nameText = ""
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        self.nameText = txtName.text!
        performSegue(withIdentifier: "name", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! DoneViewController
        vc.finalName = self.nameText
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}
