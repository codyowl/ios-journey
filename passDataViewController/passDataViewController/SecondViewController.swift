//
//  SecondViewController.swift
//  passDataViewController
//
//  Created by Tringapps-Admin on 05/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var transferredText = ""

    @IBOutlet weak var labelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(transferredText)
        labelText.text = transferredText
        
        // Do any additional setup after loading the view.
    }



}
