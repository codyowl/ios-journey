//
//  TodoAddViewController.swift
//  UnderstandingDelegates
//
//  Created by Tringapps-Admin on 06/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

// delegate to pass data
protocol dataPassDelegate {
    func dataPassDelegateMethod (data : String)
}

class TodoAddViewController: UIViewController {

    @IBOutlet weak var TodoText: UITextField!
    
    
    var dataPass : dataPassDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
    @IBAction func addButtonPressed(_ sender: Any) {
        if dataPass != nil {
            if TodoText.text != nil {
                let textFieldData = TodoText.text
                dataPass?.dataPassDelegateMethod(data: textFieldData!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
