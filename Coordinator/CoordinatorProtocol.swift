//
//  CoordinatorProtocol.swift
//  GBProject
//
//  Created by Mac on 03.05.2022.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var childCoordinator: [Coordinator] { get set }
    var navigation: UINavigationController { get set }
    func start()
}
