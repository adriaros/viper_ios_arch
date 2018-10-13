//
//  LoginPresenter.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/13/18.
//  Copyright © 2018 adria. All rights reserved.
//

import UIKit

class LoginPresenter: LoginViewToPresenterProtocol {
    
    var view: LoginPresenterToViewProtocol?
    var interactor: LoginPresenterToInteractorProtocol?
    var router: LoginPresenterToRouterProtocol?
    
    func updateView() {
    }
    
}

extension LoginPresenter: LoginInteractorToPresenterProtocol {
    
}


