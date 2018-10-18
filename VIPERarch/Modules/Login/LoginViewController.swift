//
//  ViewController.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/13/18.
//  Copyright © 2018 adria. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var presenter: LoginViewToPresenterProtocol?
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var userContainerView: UIView!
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.updateView()
    }
    
    @IBAction func onLogin(_ sender: Any) {
        presenter?.loginButtonPressed()
    }
    
}

extension LoginViewController: LoginPresenterToViewProtocol {
}
