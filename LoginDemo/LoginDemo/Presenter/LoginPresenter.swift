//
//  LoginPresenter.swift
//  LoginDemo
//
//  Created by Iyyappan on 12/12/18.
//  Copyright © 2018 apple. All rights reserved.
//

import Foundation

protocol loginDelegate {
    func showAlert(message: String)
    func validationSuccess()
    func validationFail(message: String)
}

class LoginPresenter {
    
    var delegate : loginDelegate
    init(delegate : loginDelegate) {
        self.delegate = delegate
    }
    
    func login(userId: String, password: String){
        
        if userId.isEmpty{
            self.delegate.showAlert(message: emptyUserName)
            return
        }
        
        if userId.count < 4  || userId.count > 8 {
            self.delegate.showAlert(message: minMaxUserName)
            return
        }
    
        if password.isEmpty {
            self.delegate.showAlert(message: emptyPassword)
            return
        }
        
        if password.count < 4 || password.count > 8 {
            self.delegate.showAlert(message: minMaxPassword)
            return
        }
        
        if ((userId.contains("test123")) && (password.contains("test123"))) {
            self.delegate.validationSuccess()
        } else {
            self.delegate.validationFail(message: wrongCred)
        }
        
    }
}
