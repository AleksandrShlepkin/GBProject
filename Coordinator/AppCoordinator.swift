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
    var childCoordinator: [Coordinator]
    var navigation: UINavigationController
    
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        <#code#>
    }
    
    
}
