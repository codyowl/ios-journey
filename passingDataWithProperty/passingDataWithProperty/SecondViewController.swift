//
//  SecondViewController.swift
//  passingDataWithProperty
//
//  Created by Tringapps-Admin on 19/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var PassedText : String = ""

    @IBOutlet weak var PassedTextLabel: UILabel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("View loaded !")
        print (PassedText)
        // Assigning passed text value from "FirstViewController" to the lavbel text
        PassedTextLabel?.text = PassedText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
