//
//  RegisterViewController.swift
//  GBProject
//
//  Created by Mac on 03.05.2022.
//

import Foundation
import UIKit

class RegisterViewControlle: UIViewController {
    
    
    private var register: RegistrationView {
        return self.view as! RegistrationView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = RegistrationView()
    }
}
