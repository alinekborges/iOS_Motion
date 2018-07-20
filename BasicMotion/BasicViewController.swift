//
//  ViewController.swift
//  BasicMotion
//
//  Created by Aline Borges on 15/07/2018.
//  Copyright © 2018 Aline Borges. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var views: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMotionParallax()
    }
    
    func setupMotionParallax(inversed: Bool = false) {
        
        let views = inversed ? self.views : self.views.reversed()
        
        views?.enumerated().forEach { offset, view in
            view.addMotion(amount: offset * 30)
        }
    }
    
    @IBAction func didChangeSwitch(_ sender: UISwitch) {
        setupMotionParallax(inversed: !sender.isOn)
    }
    

}

