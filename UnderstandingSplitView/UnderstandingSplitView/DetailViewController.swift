//
//  DetailViewController.swift
//  UnderstandingSplitView
//
//  Created by Tringapps-Admin on 17/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var gunName: UILabel!
    @IBOutlet weak var gunImage: UIImageView!
    @IBOutlet weak var gunDescription: UILabel!
    
    var gun: Gun? {
        didSet {
            refereshUI()
        }
    }
    
    // helper method "refereshUI
    
    func refereshUI()  {
        loadViewIfNeeded()
        gunName.text? = (gun?.name)!
        gunImage.image? = (gun?.icon)!
        gunDescription.text? = (gun?.description)!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
    
    

    
}
