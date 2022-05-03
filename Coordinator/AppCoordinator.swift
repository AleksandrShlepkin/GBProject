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
    
    
    init(navigation: UINavigationController, parentCoordinator: Coordinator) {
        self.navigation = navigation
        self.parentCoordinator = parentCoordinator
    }
    
    func start() {
        goToRegister()
    }
    
    func goToRegister() {
        let vc = RegisterViewControlle()
        let loginView = RegistrationView()
        loginView.coordinator = self
        vc.registerView = loginView
        navigation.pushViewController(vc, animated: true)
        
        
        
        
    }
    
    
}
