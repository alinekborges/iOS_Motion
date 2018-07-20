//
//  UIView+motion.swift
//  BasicMotion
//
//  Created by Aline Borges on 16/07/2018.
//  Copyright © 2018 Aline Borges. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addMotion(amount: Int) {
        
        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -amount
        horizontal.maximumRelativeValue = amount
        
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -amount
        vertical.maximumRelativeValue = amount
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [vertical, horizontal]
        self.motionEffects.removeAll()
        self.addMotionEffect(group)
    }
    
}

