//
//  UIViewControllerSupport.swift
//  mobileUp - test
//
//  Created by Роман Зобнин on 30.07.2021.
//

import UIKit

extension UIViewController {
    
    //MARK: Alerts
    
    func createOkAction(action: Optional<() -> ()> = nil) -> UIAlertAction {
        let okString = "Ok"
        if let action = action {
            return UIAlertAction(title: okString, style: .default) { _ in
                action()
            }
        } else {
            return UIAlertAction(title: okString, style: .default)
        }
    }
    
    func alert(title: String, message: String, action:  Optional<() -> ()> = nil) {
        
        let allert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = createOkAction(action: action)
        
        allert.addAction(okAction)
        present(allert, animated: true)
    }
    
    func errorAlert(title: String, message: String, retryAction: Optional<() -> ()> = nil, okAction: Optional<() -> ()> = nil ){
        
        let allert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if let action = retryAction {
            
            let retryAction = UIAlertAction(title: "Retry", style: .default) { _ in
                action()
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            
            allert.addAction(retryAction)
            allert.addAction(cancelAction)
            
        } else {
            let okAction = createOkAction(action: okAction)
            allert.addAction(okAction)
        }
        
        
        present(allert, animated: true)
    }
    
    func showError() {
        errorAlert(
            title: "Error",
            message: "Обратитесь к разработчику",
            retryAction: nil) {
            self.dismiss(animated: true)
        }
    }
}
