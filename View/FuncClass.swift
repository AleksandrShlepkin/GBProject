//
//  FuncClass.swift
//  GBProject
//
//  Created by Mac on 15.05.2022.
//

import Foundation

class FuncClass {
    
    var arrayUsers: [LoginModel] = []
    var realmModel = LoginModel()
    var saveRealm: SaveRealm?
    weak var view: RegistrationView?
    
    @objc func registerUser() {
        guard let login = view?.loginTextField.text,
              let password = view?.passwordTextField.text,
              let name = view?.nameTextField.text,
              let secondName = view?.secondNameTextField.text else {
                  return
              }
        self.realmModel.login = login
        self.realmModel.password = password
        self.realmModel.name = name
        self.realmModel.secondName = secondName
        self.arrayUsers.append(realmModel)
        self.saveRealm?.saveRegister(arrayUser: arrayUsers)
        print(arrayUsers)
    }
    
}
