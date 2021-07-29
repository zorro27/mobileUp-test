//
//  StartViewController.swift
//  mobileUp - test
//
//  Created by Роман Зобнин on 28.07.2021.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var loginButton: myView!
    @IBOutlet weak var nameCompany: myView!
    @IBOutlet weak var nameApp: myView!

    override func viewDidLoad() {
        super.viewDidLoad()
        settingLoginButton()
        settingNameCompany()
        settingNameApp()
        tap()
    }
}


extension StartViewController {
    
    private func settingLoginButton() {
        loginButton.titleLabel.text = "Вход через VK"
        loginButton.layer.cornerRadius = loginButton.frame.height/2
        loginButton.layer.masksToBounds = true
    }

    private func settingNameCompany() {
        nameCompany.titleLabel.text = "Mobile Up"
        nameCompany.titleLabel.backgroundColor = .white
        nameCompany.titleLabel.textColor = .black
        nameCompany.titleLabel.textAlignment = .left
        nameCompany.titleLabel.font = nameCompany.titleLabel.font.withSize(45)
    }
    
    private func settingNameApp() {
        nameApp.titleLabel.text = "Gallary"
        nameApp.titleLabel.backgroundColor = .white
        nameApp.titleLabel.textColor = .black
        nameApp.titleLabel.textAlignment = .left
        nameApp.titleLabel.font = nameApp.titleLabel.font.withSize(45)
    }
    
    func tap() {
        let tap = UITapGestureRecognizer(target: self, action:#selector(handleTap))
        loginButton.addGestureRecognizer(tap)
    }
    
    @objc func handleTap() {
        print("tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondVC") as UIViewController
        present(secondViewController, animated: true, completion: nil)
    }
    
}
