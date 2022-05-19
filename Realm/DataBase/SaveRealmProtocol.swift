//
//  SaveRealmProtocol.swift
//  GBProject
//
//  Created by Mac on 02.05.2022.
//

import Foundation
import RealmSwift

protocol SaveRealm {
    func save(login: LoginModel, password: LoginModel)
    func getObject() -> [LoginModel] 
    func saveRegister(arrayUser: [LoginModel]) 
}
