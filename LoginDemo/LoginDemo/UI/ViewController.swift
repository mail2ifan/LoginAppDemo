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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserName.delegate = self
        txtPassword.delegate = self
        btnLogin.layer.cornerRadius = 10
    }

    @IBAction func btnLoginClicked(_ sender: Any) {
        
        if ((txtUserName?.text?.contains("test123"))! && (txtPassword?.text?.contains("test123"))!) {
            alert(successTitle , message: successMsg)
        } else {
            let userName = txtUserName.text
            let password = txtPassword.text
            
            if((userName?.isEmpty)! || (password?.isEmpty)!) {
                alert(message: failureMsg)
            } else {
                alert(failureTitle,message: wrongCred)
            }
        }
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
