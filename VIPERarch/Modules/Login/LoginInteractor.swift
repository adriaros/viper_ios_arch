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
    let FireBase = FireBaseServices()
    
    func login() {
        FireBase.Authentication(email: "admin@hotmail", password: "admin123")
    }
}

