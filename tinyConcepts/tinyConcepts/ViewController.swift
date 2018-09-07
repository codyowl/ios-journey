//
//  ViewController.swift
//  tinyConcepts
//
//  Created by Tringapps-Admin on 07/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func pressButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "First alert", message: "Hurray we did it !" , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Done", style: .default, handler: nil)
        
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
}

