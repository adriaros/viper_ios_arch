//
//  FireBaseError.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/17/18.
//  Copyright © 2018 adria. All rights reserved.
//

import Foundation

class FireBaseError {
    
    func UserError(error: String){
        
        if error.elementsEqual(Constants.ServiceCode.Error.ERROR_USER_NOT_FOUND) {
        } else if error.elementsEqual(Constants.ServiceCode.Error.ERROR_USER_DISABLED) {
            
        } else if error.elementsEqual(Constants.ServiceCode.Error.ERROR_USER_TOKEN_EXPIRED) {
            
        } else if error.elementsEqual(Constants.ServiceCode.Error.ERROR_INVALID_USER_TOKEN) {
            
        } else {
            ErrorHandler.showAlert(title: "Error", msg: error)
        }
        
    }
}
