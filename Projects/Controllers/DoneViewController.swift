//
//  DoneViewController.swift
//  Projects
//
//  Created by Thomas Hill on 10/7/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class DoneViewController: UIViewController {
    
    var finalName = ""
    @IBOutlet weak var lblName: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = "Hi " + finalName
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
