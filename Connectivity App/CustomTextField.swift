//
//  CustomTextField.swift
//  Connectivity App
//
//  Created by maxence murat on 2021/03/24.
//

import UIKit

class CustomTextField: UITextField {
    var textPadding = UIEdgeInsets(top: 0,left: 0,bottom: 40,right: 0)
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.placeholderRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
