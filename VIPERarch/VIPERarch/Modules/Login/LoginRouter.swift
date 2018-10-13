//
//  LoginRouter.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/13/18.
//  Copyright © 2018 adria. All rights reserved.
//

import UIKit

class LoginRouter: LoginPresenterToRouterProtocol{
    
    class func createModule() -> UIViewController {
        
        let view: LoginViewController = Storyboard.LoginViewController.instantiateViewController()

        let presenter: LoginViewToPresenterProtocol & LoginInteractorToPresenterProtocol = LoginPresenter()
        let interactor: LoginPresenterToInteractorProtocol = LoginInteractor()
        let router: LoginPresenterToRouterProtocol = LoginRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
}
