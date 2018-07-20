//
//  Utils.swift
//  BasicMotion
//
//  Created by Aline Borges on 17/07/2018.
//  Copyright © 2018 Aline Borges. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    // swiftlint:disable identifier_name
    convenience init(r: Int, g: Int, b: Int) {
        self.init(red: CGFloat(Double(r) / 255.0),
                  green: CGFloat(Double(g) / 255.0),
                  blue: CGFloat(Double(b) / 255.0),
                  alpha: 1)
    }
    
}


extension CALayer {
    
    @nonobjc class func creditCardGradient(_ frame: CGRect) -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = frame
//        let startColor = UIColor(r: 26, g: 188, b: 156).cgColor
//        let endColor = UIColor(r: 4, g: 146, b: 128).cgColor
        let startColor = UIColor(r: 60, g: 60, b: 60).cgColor
        let endColor = UIColor(r: 30, g: 30, b: 30).cgColor
        
        gradientLayer.colors = [startColor, endColor]
        gradientLayer.locations = [0.0, 1.0]
        
        return gradientLayer
    }
    
}
