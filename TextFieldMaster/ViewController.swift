//
//  ViewController.swift
//  TextFieldMaster
//
//  Created by Thanh Bui on 2/9/17.
//  Copyright © 2017 Thanh Bui. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var textField: BaseTextField!
    @IBOutlet weak var emailTextField: EmailTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        textField.setBorderWith(width: 3.0)
        textField.maxLength = 5
        textField.leftPadding = 10.0
        textField.setCornerRadius(radius: 10.0)
        textField.placeholder = "olala"
        textField.setPlaceHolderColor(color: UIColor.gray)
        textField.setRoundCorner()
        
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       return self.textField.ChangeText(in: range, replacementText: string)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBOutlet weak var ok: UIButton!

    @IBAction func okTouch(_ sender: Any) {
        print(emailTextField.isValidEmail())
    }
}

