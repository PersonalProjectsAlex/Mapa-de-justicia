//
//  UnderlinedTextField.swift
//  Mapa de justicia
//
//  Created by Administrador on 30/05/18.
//  Copyright © 2018 avalogics. All rights reserved.
//
import UIKit
extension UITextField {
    func setBottomBorder() {
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}
