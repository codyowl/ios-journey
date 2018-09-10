//
//  ViewController.swift
//  tinyConcepts
//
//  Created by Tringapps-Admin on 07/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let secondView = "secondViewController"
    let firstSegue = "firstSegue"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func pressButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "First alert", message: "Hurray we did it !" , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: {
            (_)in
            self.performSegue(withIdentifier: "firstSegue", sender: self)
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
}

