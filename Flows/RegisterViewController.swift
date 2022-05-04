//
//  RegisterViewController.swift
//  GBProject
//
//  Created by Mac on 03.05.2022.
//

import Foundation
import UIKit

class RegisterViewControlle: UIViewController {
    
    var registerView: RegistrationView?
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    override func loadView() {
        self.view = registerView
    }
}
