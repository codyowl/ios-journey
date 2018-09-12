//
//  ViewController.swift
//  ScrollViewUnderstanding
//
//  Created by Tringapps-Admin on 12/09/18.
//  Copyright © 2018 Tringapps-Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var scrollView: UIScrollView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // creating an image view to represent along with the scroll image
        
        imageView = UIImageView(image: UIImage(named: "Image"))
       
        // Creating our scroll view with the frame parameter
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        
        scrollView.contentSize = imageView.bounds.size
        
        // adding the image view (which is our image) as a subview to the scroll view using addSubview
        scrollView.addSubview(imageView)
        
        // adding the scroll view as a subview to the view
        view.addSubview(scrollView)
    }

    
}

