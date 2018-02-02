//
//  ViewController.swift
//  BazookKeypadControl
//
//  Created by Manraaj Nijjar on 1/28/18.
//  Copyright © 2018 Manraaj Nijjar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var keyPad: BazookKeypad!
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        keyPad.associatedTextField = textField
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

