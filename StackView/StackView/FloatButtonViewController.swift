//
//  FloatButtonViewController.swift
//  StackView
//
//  Created by Kostya Bychkov on 10/31/15.
//  Copyright © 2015 Kostya Bychkov. All rights reserved.
//

import UIKit

class FloatButtonViewController: UIViewController {

    @IBOutlet var topConstraints: [NSLayoutConstraint]!
    @IBOutlet var bottomConstraints: [NSLayoutConstraint]!
    
    var isTop: Bool = true
    
    @IBAction func pew() {
        if isTop {
            isTop = false
            UIView.animateWithDuration(2, animations: { () -> Void in
                NSLayoutConstraint.deactivateConstraints(self.topConstraints)
                NSLayoutConstraint.activateConstraints(self.bottomConstraints)
                self.view.layoutIfNeeded()
            })
        } else {
            isTop = true
            UIView.animateWithDuration(2, animations: { () -> Void in
                NSLayoutConstraint.deactivateConstraints(self.bottomConstraints)
                NSLayoutConstraint.activateConstraints(self.topConstraints)
                self.view.layoutIfNeeded()
            })
        }
    }

}
