//
//  ViewController.swift
//  UnderstandingDelegates
//
//  Created by Tringapps-Admin on 06/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, dataPassDelegate {
    
    
    @IBOutlet weak var todoDataLabel: UILabel!
    
    var segueId = "TodolistAdder"
    
    func dataPassDelegateMethod(data: String) {
        print (data)
        todoDataLabel.text = data
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueId {
            let TVC = segue.destination as! TodoAddViewController
            TVC.dataPass = self
        }
    }
  

}

