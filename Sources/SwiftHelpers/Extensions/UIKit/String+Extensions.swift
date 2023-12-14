//
//  String+Extensions.swift
//  SwiftHelpers/Extensions/UIKit
//
//  Created by Leo Ho on 2023/6/23.
//

import UIKit

public extension String {
    
    /// Calculate word size
    /// - Parameters:
    ///   - font: font
    /// - Returns: word size
    func size(with font: UIFont) -> CGSize {
        return NSString(string: self).size(withAttributes: [.font : font])
    }
}
