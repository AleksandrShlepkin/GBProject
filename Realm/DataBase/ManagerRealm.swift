//
//  ManagerRealm.swift
//  GBProject
//
//  Created by Mac on 02.05.2022.
//

import Foundation
import RealmSwift


final class ManagerRealm: SaveRealm {
    
    fileprivate lazy var mainRealm = try! Realm(configuration: .defaultConfiguration, queue: .global())
    
    
    func save(login: LoginModel, password: LoginModel) {
        try! mainRealm.write({
            mainRealm.add(login)
            mainRealm.add(password)
        })
    }
    
        func getObject() -> [LoginModel] {
    
            let models = mainRealm.objects(LoginModel.self)
            return Array(models)
        }
    
    
}
