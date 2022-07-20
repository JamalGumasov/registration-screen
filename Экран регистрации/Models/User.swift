//
//  User.swift
//  Экран регистрации
//
//  Created by Джамал Гумасов on 03.07.2022.
//

import UIKit

struct User {
    let login: String?
    let passwords: String?
}

//правильный логин и пароль
extension User {
    static var logins = [
    User(login: "Jamal", passwords: "1234")
    ]
}
