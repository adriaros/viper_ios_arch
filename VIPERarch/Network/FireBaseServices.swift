//
//  FireBaseServices.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/17/18.
//  Copyright © 2018 adria. All rights reserved.
//

import Foundation
import Firebase

class FireBaseServices {
    
    let FBError = FireBaseError()
    
    func Authentication(email: String, password: String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { (response, error) in
            
            let vc = UIApplication.topViewController()
            vc?.showLoader()
            
            guard let error = error else { return }
            print("error: ", error)
            self.FBError.UserError(error: error.localizedDescription)
            vc?.hideLoader()
            
            guard let response = response else { return }
            print("user: ", response.user.email!)
            vc?.hideLoader()
            
        }
        
    }
    
}
