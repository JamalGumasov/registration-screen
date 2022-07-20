//
//  Dynamic.swift
//  Экран регистрации
//
//  Created by Джамал Гумасов on 03.07.2022.
//

import UIKit

class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
}
 
