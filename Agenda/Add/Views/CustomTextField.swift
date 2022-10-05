//
//  CustomTextField.swift
//  Agenda
//
//  Created by user on 03/10/22.
//

import UIKit

class CustomTextField: UITextField {
<<<<<<< HEAD
    init(placeholder: String, UIKeyboardType: UIKeyboardType) {
=======
    init(placeholder: String, keyboardType: UIKeyboardType) {
>>>>>>> c4fc772 (second commit)
        super.init(frame: .zero)
        setupTextField(placeholder: placeholder, keyboardType: keyboardType)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    private func setupTextField(placeholder: String, keyboardType: UIKeyboardType) {
        font = UIFont.systemFont(ofSize: 20, weight: .medium)
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 8
        textColor = .darkGray
        textAlignment = .center
        self.placeholder = placeholder
        self.keyboardType = keyboardType
    }
}
