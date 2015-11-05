//
//  ViewController.swift
//  StackView
//
//  Created by Kostya Bychkov on 10/27/15.
//  Copyright © 2015 Kostya Bychkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var constraintsCollection: [NSLayoutConstraint]!
    @IBOutlet var inactiveConstraint: NSLayoutConstraint!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    
//        NSLayoutConstraint.activateConstraints(constraintsCollection)
        
//        inactiveConstraint.active = true
    }
}

