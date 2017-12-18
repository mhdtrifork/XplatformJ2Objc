//
//  CreateUserViewController.swift
//  XplatformDemo
//
//  Created by Morten Hedengran on 11/12/2017.
//  Copyright © 2017 Trifork. All rights reserved.
//

import Foundation
import UIKit

class CreateUserViewController: UIViewController {
    let usernameField = UITextField()
    let passwordField = UITextField()
    let password2Field = UITextField()
    let errorLabel = UILabel()
    let createUserButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        usernameField.backgroundColor = .white
        usernameField.placeholder = "username"
        usernameField.delegate = self
        passwordField.backgroundColor = .white
        passwordField.placeholder = "password"
        passwordField.delegate = self
        password2Field.backgroundColor = .white
        password2Field.placeholder = "password againg"
        password2Field.delegate = self
        
        errorLabel.numberOfLines = 0
        errorLabel.font = UIFont.systemFont(ofSize: 17)
        errorLabel.textColor = .red
        errorLabel.text = "Error in password entry"
        
        createUserButton.setTitle("create user", for: .normal)
        createUserButton.addTarget(self, action: #selector(createUser), for: .touchUpInside)
        
        layoutViews()
    }
    
    func layoutViews() {
        view.addSubview(usernameField)
        usernameField.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top).offset(175)
            make.left.equalTo(view).offset(30)
            make.right.equalTo(view).offset(-30)
            make.height.equalTo(38)
        }
        
        view.addSubview(passwordField)
        passwordField.snp.makeConstraints { (make) in
            make.top.equalTo(usernameField.snp.bottom).offset(30)
            make.left.right.height.equalTo(usernameField)
        }
        
        view.addSubview(password2Field)
        password2Field.snp.makeConstraints { (make) in
            make.top.equalTo(passwordField.snp.bottom).offset(15)
            make.left.right.height.equalTo(passwordField)
        }
        
        view.addSubview(errorLabel)
        errorLabel.snp.makeConstraints { (make) in
            make.top.equalTo(password2Field.snp.bottom).offset(5)
            make.left.right.height.equalTo(password2Field)
        }
        
        view.addSubview(createUserButton)
        createUserButton.snp.makeConstraints { (make) in
            make.top.equalTo(errorLabel.snp.bottom).offset(30)
            make.left.right.height.equalTo(usernameField)
            make.height.equalTo(38)
        }
    }

    @objc func createUser() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension CreateUserViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }
}