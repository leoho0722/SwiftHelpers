//
//  UIAlertController+Extensions.swift
//  SwiftHelpers/Extensions/UIKit
//
//  Created by Leo Ho on 2023/12/9.
//

import UIKit

public extension UIAlertController {
    
    /// Customize the attributedMessage of the UIAlertController message
    /// - Parameters:
    ///   - value: attributedMessage
    func setAttributedMessage(value: Any?) {
       setValue(value, forKey: "attributedMessage")
    }
}
