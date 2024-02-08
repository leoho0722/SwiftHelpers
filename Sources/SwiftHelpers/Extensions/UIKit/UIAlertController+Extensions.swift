//
//  UIAlertController+Extensions.swift
//  SwiftHelpers/Extensions/UIKit
//
//  Created by Leo Ho on 2023/12/9.
//

#if canImport(UIKit)
import UIKit

public extension UIAlertController {
    
    /// The attributes of the UIAlertController
    enum Attributes {
        
        /// the attributedMessage of the UIAlertController message
        case attributedMessage
        
        var key: String {
            switch self {
            case .attributedMessage:
                return "attributedMessage"
            }
        }
    }
    /// Customize the attributes of the UIAlertController message
    ///
    /// - Parameters:
    ///   - attributes: the attributes of key-value pair
    func allAttribtes(with attributes: Dictionary<UIAlertController.Attributes, Any>) {
        attributes.forEach { key, value in
            setValue(value, forKey: key.key)
        }
    }
    
    /// Customize the attributedMessage of the UIAlertController message
    /// - Parameters:
    ///   - value: attributedMessage
    @available(
        *,
         deprecated,
         renamed: "allAttribtes(with:)",
         message: "Deprecated since version 0.0.17, renamed to allAttribtes(with:)"
    )
    func setAttributedMessage(value: Any?) {
       setValue(value, forKey: "attributedMessage")
    }
    
    /// Add multiple UIAlertActions to UIAlertController at once.
    /// - Parameters:
    ///   - actions: Array of the UIAlertAction
    func addActions(_ actions: [UIAlertAction]) {
        actions.forEach { action in
            addAction(action)
        }
    }
    
    /// Add multiple UIAlertActions to UIAlertController at once. 
    /// 
    /// Same as ```func addActions(_ actions: UIAlertAction...)```
    ///
    /// - Parameters:
    ///   - actions: UIAlertAction of variable length
    func addActions(_ actions: UIAlertAction...) {
        actions.forEach { action in
            addAction(action)
        }
    }
}
#endif
