//
//  ViewModel.swift
//  Экран регистрации
//
//  Created by Джамал Гумасов on 03.07.2022.
//

import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = UIColor.systemGray6
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].passwords {
            statusText.value = "Log in fallied."
            
                let alert = UIAlertController(title: "Error", message: "Сначало введите текст потом нажмите на кнопку!", preferredStyle: .alert)
             let action = UIAlertAction(title: "ok", style: .cancel, handler: nil)
             present(alert, animated: true, completion: nil)
            alert.addAction(action)
        } else {
            statusText.value = "You successfully logger in."
        }
        
    }
    
}
