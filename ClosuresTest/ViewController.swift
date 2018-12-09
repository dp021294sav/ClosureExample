//
//  ViewController.swift
//  ClosuresTest
//
//  Created by Андрей Сергиенко on 12/4/18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var changeColorAction: ((UIColor) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorAction = {
             [weak self] (color: UIColor) in
            self?.view.backgroundColor = color
        }
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        changeColorAction?(sender.backgroundColor ?? .white)
    }
}
