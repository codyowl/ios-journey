//
//  FirstViewController.swift
//  passingDataWithProperty
//
//  Created by Tringapps-Admin on 19/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // method for the pass button
    

    @IBAction func PassButtonPressed(_ sender: Any) {
        // Creating instance for second view controller
        // specifying the second view controller name by passing it as an arugment for nibName
        let svc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        svc.PassedText = "From FVC"
        
        // code to navigate from one view controller to another
        // Passing second view controller instance as an argument to "push view controller"
        navigationController?.pushViewController(svc, animated: true)
    }
}
