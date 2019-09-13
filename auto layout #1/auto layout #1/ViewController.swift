//
//  ViewController.swift
//  auto layout #1
//
//  Created by Kartik Sharma on 9/13/19.
//  Copyright © 2019 Kartik Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var imageView: UIImageView!
    
   
    
    @IBOutlet var bottom: NSLayoutConstraint!
    @IBOutlet var trailing: NSLayoutConstraint!
    @IBOutlet var top: NSLayoutConstraint!
    @IBOutlet var leading: NSLayoutConstraint!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imageView = UIImageView()
        view.addSubview(imageView)
        
        imageView.image = UIImage(named: "BayBridge.jpg")
        imageView.contentMode = .scaleAspectFit
    
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        leading = NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)
        
        trailing = NSLayoutConstraint(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        
        top = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20.0)
        
        bottom = NSLayoutConstraint(item: imageView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        
        
        leading?.isActive = true
        trailing?.isActive = true
        top?.isActive = true
        bottom?.isActive = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

