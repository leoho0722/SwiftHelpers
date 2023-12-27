//
//  UIView+Extensions.swift
//  SwiftHelpers/Extensions/UIKit
//
//  Created by Leo Ho on 2023/12/8.
//

#if canImport(UIKit)
import UIKit

public extension UIView {
    
    /// Load UINib from nibName to register ``UITableViewCell`` or ``UICollectionViewCell``
    /// - Returns: UINib Object
    class func loadFromNib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}
#endif
