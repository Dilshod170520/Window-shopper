//
//  CurencyTextField.swift
//  Window-Shopper
//
//  Created by MacBook Pro on 02/09/23.
//

import UIKit

class CurencyTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor =  UIColor(named: "TFBackgroundColor")
        layer.cornerRadius = 5.0
        textAlignment = .center
    
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [ .foregroundColor: UIColor.white])
            
            attributedPlaceholder = place
            textColor = .white
        }
    }
}
