//
//  BaseTextField.swift
//  TextFieldMaster
//
//  Created by Thanh Bui on 2/9/17.
//  Copyright © 2017 Thanh Bui. All rights reserved.
//

import UIKit

class BaseTextField: UITextField {

    var leftPadding: CGFloat? = 0
    var rightPadding: CGFloat? = 0
    var topPadding: CGFloat? = 0
    var bottomPadding: CGFloat? = 0
    var maxLength: NSInteger?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(topPadding!, leftPadding!, bottomPadding!, rightPadding!))
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(topPadding!, leftPadding!, bottomPadding!, rightPadding!))
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(topPadding!, leftPadding!, bottomPadding!, rightPadding!))
    }
    
    
    public func ChangeText(in range: NSRange, replacementText text: String) -> Bool {
        let currentString: NSString = self.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: text) as NSString
        if maxLength == nil || maxLength! == 0 {
            return true
        }
        return newString.length <= maxLength!
    }
    
    public func setBorderWith(width : CGFloat) -> Void {
        self.layer.borderWidth = width
    }
    public func setCornerRadius(radius : CGFloat) -> Void {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }
    public func setBorderColor(color : CGColor) -> Void {
        self.layer.borderColor = color
    }
    public func setPlaceHolderColor (color : UIColor) -> Void {
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!,
                                                               attributes: [NSForegroundColorAttributeName: color])
    }
    
    public func setRoundCorner()  -> Void {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.height/2
    }
    public func setLeftPadding (length : CGFloat) -> Void {
        self.leftPadding = length
    }
    
}
