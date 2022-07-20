//
//  ViewController.swift
//  Экран регистрации
//
//  Created by Джамал Гумасов on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: passwordField.text ?? "")
   
    }
    
    
    @IBOutlet weak var statusTextLabel: UILabel!
    
    var viewModel = ViewModel()
    
    func initialStateI() {
        statusTextLabel.textColor = .systemGray6
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      bindViewModel()
        statusTextLabel.textColor = .systemGray2
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.statusTextLabel.text = statusText
            }
        })
        
    }


}

