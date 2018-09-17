//
//  mainTableViewController.swift
//  UnderstandingSplitView
//
//  Created by Tringapps-Admin on 17/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class mainTableViewController: UITableViewController {
    
    // array to hold the monster class we have created ont he "guns.swift"
    
    let guns = [
    Gun(name: "UMP9", description: "Mid range weapon but bad on long targets.", iconName: "ump9", weapon: .ump9),
    Gun(name: "VECTOR", description: "Shortrange weapon particulary used within less mm", iconName: "vector", weapon: .vector),
    Gun(name: "M416", description: "Good for long range ! can have up to 250 mm", iconName: "m416", weapon: .m416),
    Gun(name: "SCARL", description: "Perfect weapon for all range, can have upto 5 extras", iconName: "scarl", weapon: .scarL),
    Gun(name: "AKM", description: "Perfect weapon with few bits of lack when it comes to 6x scope", iconName: "akm", weapon: .akm)
    
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }

   

    // method to specify the number of rows in the table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return guns.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
        let gun = guns[indexPath.row]
        cell.textLabel?.text = gun.name
        return cell
    }
  
    
}
