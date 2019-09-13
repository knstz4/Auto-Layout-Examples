//
//  ViewController.swift
//  auto layout #2
//
//  Created by Kartik Sharma on 9/13/19.
//  Copyright © 2019 Kartik Sharma. All rights reserved.
//


//Followed an example from one of the websites provided in the module. Hitting an error and unsure how to fix.
import UIKit

class ViewController: UIViewController {
    
    
    let button = UIButton(type: .custom)
    let textFieldTop = UITextField(frame: .zero)
    let textFieldBottom = UITextField(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textFieldTop.borderStyle = .roundedRect
        textFieldTop.translatesAutoresizingMaskIntoConstraints = false
        textFieldBottom.borderStyle = .roundedRect
        textFieldBottom.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textFieldTop)
        view.addSubview(textFieldBottom)
        
        view.addConstraints(generateConstraintsTop())
        view.addConstraints(generateConstraintsBottom())
        
        button.setTitle("Submit", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        
        view.addConstraints(generateConstraintsButton())
    }
    
    private func generateConstraintsTop() -> [NSLayoutConstraint] {
        
        let constraintTop = NSLayoutConstraint(item: textFieldTop, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 28.0)
        let constraintX = NSLayoutConstraint(item: textFieldTop, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let constraintWidth = NSLayoutConstraint(item: textFieldTop, attribute: .width, relatedBy: .equal, toItem: view, attribute: .notAnAttribute, multiplier: 1.0, constant: 200.0)
        
        return [constraintTop, constraintX, constraintWidth]
        
    }
    
    private func generateConstraintsBottom() -> [NSLayoutConstraint] {
        
        let constraintTop = NSLayoutConstraint(item: textFieldBottom, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 28.0)
        let constraintLeading = NSLayoutConstraint(item: textFieldBottom, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 10.0)
        let constraintTrailing = NSLayoutConstraint(item: textFieldBottom, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .notAnAttribute, multiplier: 1.0, constant: 200.0)
        
        return [constraintTop, constraintLeading, constraintTrailing]
        
    }
    
    private func generateConstraintsButton() -> [NSLayoutConstraint] {
        
        let constraintTop = NSLayoutConstraint(item: button, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 28.0)
        let constraintX = NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 10.0)
        
        return [constraintTop, constraintX]
        
    }
    


}

