//
//  ViewModel.swift
//  Экран регистрации
//
//  Created by Джамал Гумасов on 03.07.2022.
//

import UIKit.UIColor
import UIKit

class ViewModel: UIViewController {
var statusText = Dynamic("")
  
    //статус текста
    func userButtonPressed(login: String, password: String) {
if login != User.logins[0].login || password != User.logins[0].passwords {
    statusText.value = "Log in fallied."
   
} else {
    statusText.value = "You successfully logger in."
 
      }
   }
}

