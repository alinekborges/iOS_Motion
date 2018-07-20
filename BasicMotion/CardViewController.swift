//
//  CardViewController.swift
//  BasicMotion
//
//  Created by Aline Borges on 15/07/2018.
//  Copyright © 2018 Aline Borges. All rights reserved.
//

import Foundation
import UIKit

class CardViewController: UIViewController {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var topView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    func configureViews() {
        self.cardView.layer.cornerRadius = 7.0
        
 self.cardView.layer.insertSublayer(CALayer.creditCardGradient(self.cardView.layer.bounds), at: 0)
        self.cardView.clipsToBounds = true
        
        
        self.cardView.addMotion(amount: 30)
        self.topView.addMotion(amount: 50)
    }
}


