//
//  RegistrationView.swift
//  GBProject
//
//  Created by Mac on 03.05.2022.
//

import Foundation
import UIKit
import SnapKit

final class RegistrationView: UIView {
    
    weak var coordinator: AppCoordinator?
 
    let funcClass = FuncClass()
    
    @objc private func registerUser() {
        self.funcClass.registerUser()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }
    
    
    private(set) lazy var loginTextField: UITextField = {
        let login = UITextField()
        login.font = UIFont.boldSystemFont(ofSize: 20)
        login.backgroundColor = .systemGray6
        login.layer.cornerRadius = 5
        login.placeholder = " Login"
        return login
    }()
    
    private(set) lazy var nameTextField: UITextField = {
        let login = UITextField()
        login.font = UIFont.boldSystemFont(ofSize: 20)
        login.backgroundColor = .systemGray6
        login.layer.cornerRadius = 5
        login.placeholder = " Name"
        return login
    }()
    
    private(set) lazy var secondNameTextField: UITextField = {
        let login = UITextField()
        login.font = UIFont.boldSystemFont(ofSize: 20)
        login.backgroundColor = .systemGray6
        login.layer.cornerRadius = 5
        login.placeholder = " Second name"
        return login
    }()
    
    private(set) lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.font = UIFont.boldSystemFont(ofSize: 20)
        password.backgroundColor = .systemGray6
        password.isSecureTextEntry = true
        password.placeholder = " Password"
        password.layer.cornerRadius = 5
        return password
    }()
    
    private(set) lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Registration", for: .normal)
        button.addTarget(self, action: #selector(registerUser), for: .touchUpInside)
        button.backgroundColor = UIColor(red: 0.23, green: 0.3, blue: 0.8, alpha: 0.6)
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    
    
    func initialize() {
        self.addSubview(loginTextField)
        self.addSubview(passwordTextField)
        self.addSubview(registerButton)
        self.addSubview(nameTextField)
        self.addSubview(secondNameTextField)
        
        
        loginTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(200)
            make.left.equalToSuperview().inset(30)
            make.right.equalToSuperview().inset(30)
            make.height.greaterThanOrEqualTo(40)
        }
        
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField).inset(50)
            make.left.equalToSuperview().inset(30)
            make.right.equalToSuperview().inset(30)
            make.height.greaterThanOrEqualTo(40)
            
        }
        
        secondNameTextField.snp.makeConstraints { make in
            make.top.equalTo(nameTextField).inset(50)
            make.left.equalToSuperview().inset(30)
            make.right.equalToSuperview().inset(30)
            make.height.greaterThanOrEqualTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(secondNameTextField).inset(50)
            make.left.equalToSuperview().inset(30)
            make.right.equalToSuperview().inset(30)
            make.height.greaterThanOrEqualTo(40)
            
        }
        
        
        registerButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField).inset(50)
            make.left.equalToSuperview().inset(80)
            make.right.equalToSuperview().inset(80)
            make.height.greaterThanOrEqualTo(45)
        }
        
    }
    
}
