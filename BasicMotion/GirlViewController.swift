//
//  GirlViewController.swift
//  BasicMotion
//
//  Created by Aline Borges on 20/07/2018.
//  Copyright © 2018 Aline Borges. All rights reserved.
//

import UIKit

class GirlViewController: UIViewController {

    @IBOutlet weak var girlShadow: UIImageView!
    @IBOutlet weak var girl: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupMotion()
    }
    
    func setupMotion() {
        self.girlShadow.addMotion(amount: 100)
        self.girl.addMotion(amount: 50)
    }

}
