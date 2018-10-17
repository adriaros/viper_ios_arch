//
//  LoginInteractor.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/13/18.
//  Copyright © 2018 adria. All rights reserved.
//

import UIKit
import Firebase

class LoginInteractor: LoginPresenterToInteractorProtocol{
    
    var presenter: LoginInteractorToPresenterProtocol?
    
    func login() {
        
        Auth.auth().signIn(withEmail: "admin@hotmail.com", password: "admin") { (user, error) in
            
            if user != nil {
                print("user: ", user!.user)
            }
            
            if error != nil {
                print("error: ", error!)
            }
            
        }
    }
}

