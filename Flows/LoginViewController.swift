//
//  LoginViewController.swift
//  GBProject
//
//  Created by Mac on 02.05.2022.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
    
    private var loginview: LoginView {
        return self.view as! LoginView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
    }
    
    override func loadView() {
        self.view = LoginView()
    }
    

    
    
}


