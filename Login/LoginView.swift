//
//  LoginView.swift
//  GBProject
//
//  Created by Mac on 02.05.2022.
//

import UIKit
import SnapKit



final class LoginView: UIView {

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }
    
    private(set) lazy var LoginImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 30.0
        image.layer.masksToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "welcome")
        return image
    }()
    
    private(set) lazy var loginTextField: UITextField = {
       let login = UITextField()
        login.font = UIFont.boldSystemFont(ofSize: 20)
        login.backgroundColor = .systemGray6
        login.layer.cornerRadius = 5
        login.placeholder = " Login"
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
    
    private(set) lazy var loginButton: UIButton = {
        let button = UIButton()
//        button.addTarget(self, action: #selector(), for: .touchUpInside)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(red: 0.23, green: 0.3, blue: 0.8, alpha: 0.8)
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private(set) lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Registration", for: .normal)
        button.backgroundColor = UIColor(red: 0.23, green: 0.3, blue: 0.8, alpha: 0.6)
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private(set) lazy var forgetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forget password?", for: .normal)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    func initialize() {
        self.addSubview(LoginImage)
        self.addSubview(loginTextField)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(registerButton)
        self.addSubview(forgetButton)
        
        LoginImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(250)
            make.left.equalToSuperview().inset(50)
            make.right.equalToSuperview().inset(50)
            make.height.lessThanOrEqualTo(100)
        }
        
        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(LoginImage).inset(200)
            make.left.equalToSuperview().inset(30)
            make.right.equalToSuperview().inset(30)
            make.height.greaterThanOrEqualTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField).inset(50)
            make.left.equalToSuperview().inset(30)
            make.right.equalToSuperview().inset(30)
            make.height.greaterThanOrEqualTo(40)

        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField).inset(70)
            make.left.equalToSuperview().inset(80)
            make.right.equalToSuperview().inset(80)
            make.height.greaterThanOrEqualTo(45)
        }
        
        registerButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton).inset(50)
            make.left.equalToSuperview().inset(80)
            make.right.equalToSuperview().inset(80)
            make.height.greaterThanOrEqualTo(45)
        }
        
        forgetButton.snp.makeConstraints { make in
            make.top.equalTo(registerButton).inset(50)
            make.left.equalToSuperview().inset(80)
            make.right.equalToSuperview().inset(80)
        }
    }
}

