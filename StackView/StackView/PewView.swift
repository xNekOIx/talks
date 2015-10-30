//
//  PewView.swift
//  StackView
//
//  Created by Kostya Bychkov on 10/30/15.
//  Copyright © 2015 Kostya Bychkov. All rights reserved.
//

import UIKit

@IBDesignable
class PewView: UIView {

    @IBInspectable var preferredWidth: Double = 220
    @IBInspectable var preferredHeight: Double = 50
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(
            width: preferredWidth,
            height: preferredHeight)
    }

}
