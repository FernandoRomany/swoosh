//
//  buttonBorder.swift
//  swoosh
//
//  Created by Fernando Romany on 3/11/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit


@IBDesignable
class buttonBorder : UIButton {
    @IBInspectable var radious : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = radious
        }
    }
    @IBInspectable var border : CGFloat = 0 {
        didSet {
            self.layer.borderWidth = border
        }
    }
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
