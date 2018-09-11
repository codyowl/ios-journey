//
//  ViewController.swift
//  UnderstandingTableView
//
//  Created by Tringapps-Admin on 11/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let programmers = ["john carmack", "tj", "sean parker", "linux torvalds"]
    
    // method to specify the number of section to be in our tableview
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programmers.count
    }
    
    // method to specify the number of rows to be displayed in the section
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let programmersList = programmers[indexPath.row]
        
        cell.textLabel?.text = programmersList
        
        return cell
        
    }
    
    
   


    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    


}

