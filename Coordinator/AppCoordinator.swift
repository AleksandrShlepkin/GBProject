//
//  AppCoordinator.swift
//  GBProject
//
//  Created by Mac on 03.05.2022.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var childCoordinator: [Coordinator] = []
    var navigation: UINavigationController
    
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
        
    }
    
    func start() {
        goToLogin()
    }
    
    
    func goToLogin() {
        let vc = LoginViewController()
        let loginView = LoginView()
        loginView.coordinator = self
        vc.loginView = loginView
        navigation.pushViewController(vc, animated: true)
    }
    
    func goToRegister() {
        let vc = RegisterViewControlle()
        let registerView = RegistrationView()
        registerView.coordinator = self
        vc.registerView = registerView
        navigation.pushViewController(vc, animated: true)
        
        
        
        
    }
    
    
}
