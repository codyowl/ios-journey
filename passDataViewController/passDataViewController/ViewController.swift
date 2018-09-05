//
//  ViewController.swift
//  passDataViewController
//
//  Created by Tringapps-Admin on 05/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var textvalue = ""
    
    let segueId = "textTransformer"
    
    @IBOutlet weak var textBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func submitted(_ sender: Any) {
        self.textvalue = textBox.text!
        performSegue(withIdentifier: segueId, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let svc = segue.destination as? SecondViewController
        print(self.textvalue)
        svc?.transferredText = self.textvalue
    }
   
}

