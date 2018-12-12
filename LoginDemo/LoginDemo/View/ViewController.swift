//
//  ViewController.swift
//  LoginDemo
//
//  Created by Iyyappan on 07/12/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var imgLogin: UIImageView!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var txtUserName: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var btnLogin: UIButton!
    var presenter : LoginPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserName.delegate = self
        txtPassword.delegate = self
        btnLogin.layer.cornerRadius = 10
        self.presenter = LoginPresenter(delegate: self as loginDelegate)
    }

    @IBAction func btnLoginClicked(_ sender: Any) {
        self.presenter?.login(userId: txtUserName.text!, password: txtPassword.text!)
    }
    
    //UITextfield Delegate
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtUserName.resignFirstResponder()
        txtPassword.resignFirstResponder()
        return true
    }
}

extension ViewController : loginDelegate {
    func showAlert(message: String) {
        alert(message: message)
    }
    
    func validationSuccess() {
        alert(message: successMsg)
    }
    
    func validationFail(message: String) {
        alert(message: message)
    }
}
