//
//  Extensions.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 17/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//
//
//import Foundation
//import UIKit
//




import Foundation
import UIKit

extension UIButton {
    @IBInspectable var numberOfLines:Int {
        get {
            return self.titleLabel!.numberOfLines
        }
        set {
            self.titleLabel?.numberOfLines = newValue
        }
        
        
    }
}


extension UIView {
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor {
        get {
            return UIColor(CGColor: layer.borderColor)!
        }
        set {
            layer.borderColor = newValue.CGColor
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    
    
}


