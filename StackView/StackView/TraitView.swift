//
//  TraitView.swift
//  StackView
//
//  Created by Kostya Bychkov on 11/1/15.
//  Copyright © 2015 Kostya Bychkov. All rights reserved.
//

import UIKit

@IBDesignable
class TraitView: UIView {
    
    override func intrinsicContentSize() -> CGSize {
        switch (self.traitCollection.horizontalSizeClass,
            self.traitCollection.verticalSizeClass) {
        case (.Compact, _), (_, .Compact): return CGSize(width: 100, height: 100)
        case (.Regular, .Regular): return CGSize(width: 200, height: 200)

        default: fatalError("Pew pew")
        }
    }

}
