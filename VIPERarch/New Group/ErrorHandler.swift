//
//  ErrorHandler.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/17/18.
//  Copyright © 2018 adria. All rights reserved.
//

import UIKit

final class ErrorHandler {
    
    static func showAlert(title: String, msg: String, dismissButtonTitle: String = "error_handler_ok_button".localized(), action: (()->())? = nil, dismissAction: (()->())? = nil) {
        let alertView = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        
        let dismissButton = UIAlertAction(title: dismissButtonTitle, style: .cancel) { _ in
            dismissAction?()
        }
        
        alertView.addAction(dismissButton)
        
        guard let currentVC = UIApplication.topViewController() else { return }
        currentVC.present(alertView, animated: true)
    }
    
}
