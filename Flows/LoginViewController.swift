//
//  LoginViewController.swift
//  GBProject
//
//  Created by Mac on 02.05.2022.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
    
    var loginView: LoginView?
    var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    override func loadView() {
        self.view = loginView
        
    }
    

    
    
}


