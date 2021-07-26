//
//  StartViewController.swift
//  mobileUp - test
//
//  Created by Роман Зобнин on 27.07.2021.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.labelTitle.text = "Вход через VK"
        loginButton.labelTitle.textColor = .white
        loginButton.labelTitle.backgroundColor = .black
        loginButton.conteinerView.backgroundColor = .black
    }

    @IBOutlet weak var loginButton: MyButton!
}
