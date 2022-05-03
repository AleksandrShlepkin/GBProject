//
//  LoginModel.swift
//  GBProject
//
//  Created by Mac on 02.05.2022.
//

import Foundation
import RealmSwift


final class LoginModel: Object {
    
    @objc dynamic var login: String?
    @objc dynamic var password: String?
    
}
