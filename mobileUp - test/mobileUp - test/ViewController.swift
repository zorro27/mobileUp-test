//
//  ViewController.swift
//  mobileUp - test
//
//  Created by Роман Зобнин on 26.07.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var loginButton: myView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingButton()
        
    }
    
    
    private func settingButton() {
        loginButton.titleLabel.text = "Go в VC"
    }
}

