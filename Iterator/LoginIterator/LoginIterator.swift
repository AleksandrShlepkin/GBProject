//
//  LoginIterator.swift
//  GBProject
//
//  Created by Mac on 02.05.2022.
//

import Foundation
import UIKit


final class LoginIterator: LoginIteratorProtocol {

    

    weak var loginVC: LoginViewController?
    
    private var loginView: LoginView?
    private let realm: SaveRealm?
    var realmModel = LoginModel()
    
    init(loginVC: LoginViewController, loginView: LoginView, realm: SaveRealm) {
        self.loginVC = loginVC
        self.loginView = loginView
        self.realm = realm
    }
    
    func singUp() {
        guard let login: String = loginView?.loginTextField.text,
              let password: String = loginView?.passwordTextField.text else {
                 return showAlert(title: "Error", text: "error")
              }
        self.realmModel.login = login
        self.realmModel.password = password
        realm?.save(login: realmModel, password: realmModel)

    }
    
//    func singUpTwo(login: String?, password: String?) {
//        guard let login = login,
//              let password = password else {
//                  return showAlert(title: "Error", text: "error")
//              }
//        self.realmModel.login = login
//        self.realmModel.password = password
//        realm.save(login: realmModel, password: realmModel)
//    }
    

    
    func showAlert(title: String?, text: String?) {
        let alert = UIAlertController(title: title, message: text, preferredStyle: .alert)
        let okControl = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(okControl)
        self.loginVC?.present(alert, animated: true, completion: nil)
    }
}
