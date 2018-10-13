//
//  LoginProtocols.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/13/18.
//  Copyright © 2018 adria. All rights reserved.
//

import UIKit

protocol LoginPresenterToViewProtocol: class{
}

protocol LoginInteractorToPresenterProtocol: class{
}

protocol LoginPresenterToInteractorProtocol: class{
    var presenter: LoginInteractorToPresenterProtocol? {get set}
}

protocol LoginViewToPresenterProtocol: class{
    var view: LoginPresenterToViewProtocol? {get set}
    var interactor: LoginPresenterToInteractorProtocol? {get set}
    var router: LoginPresenterToRouterProtocol? {get set}
    func updateView()
}

protocol LoginPresenterToRouterProtocol: class{
    static func createModule() -> UIViewController
}

