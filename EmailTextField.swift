//
//  EmailTextField.swift
//  TextFieldMaster
//
//  Created by Thanh Bui on 2/9/17.
//  Copyright © 2017 Thanh Bui. All rights reserved.
//

import UIKit

class EmailTextField: BaseTextField {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.keyboardType = UIKeyboardType.emailAddress
    }

    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if emailTest.evaluate(with: self.text!) {
            return true
        } else {
            return false
        }
    }
}
