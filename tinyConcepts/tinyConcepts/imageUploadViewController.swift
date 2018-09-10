//
//  imageUploadViewController.swift
//  tinyConcepts
//
//  Created by Tringapps-Admin on 10/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class imageUploadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func uploadButtonPressed(_ sender: Any) {
        let uploader  = UIImagePickerController()
     
        // to present our uploader
        present(uploader, animated: true, completion: nil)
    }
    
  
    @IBAction func cameraButtonPressed(_ sender: Any) {
        let cameraUploader = UIImagePickerController()
        
        cameraUploader.sourceType = .camera
        
        present(cameraUploader, animated: true, completion: nil)
    }
    
}
