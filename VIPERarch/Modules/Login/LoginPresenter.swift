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
        viewsConfiguration()
        textFieldsConfiguration()
        buttonConfiguration()
    }
    
    private func viewsConfiguration(){
        view?.userContainerView.roundCorners()
        view?.userContainerView.backgroundColor = Colors.Login.containers
        view?.passwordContainerView.roundCorners()
        view?.passwordContainerView.backgroundColor = Colors.Login.containers
        view?.loginButton.roundCorners()
        view?.loginButton.backgroundColor = Colors.Login.button
    }
    
    private func textFieldsConfiguration(){
        view?.userLabel.text = ""
        view?.userTextField.placeholder = "login_username_placeholder".localized()
        view?.passwordTextField.placeholder = "login_password_placeholder".localized()
    }
    
    private func buttonConfiguration(){
        view?.loginButton.setTitle("login_button_title".localized(), for: .normal)
    }
    
    func loginButtonPressed(){
    }
}

extension LoginPresenter: LoginInteractorToPresenterProtocol {
    
}
