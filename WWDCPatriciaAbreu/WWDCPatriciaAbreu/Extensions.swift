//
//  Extensions.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 17/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
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