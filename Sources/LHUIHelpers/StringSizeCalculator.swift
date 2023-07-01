//
//  StringSizeCalculator.swift
//  SwiftHelpers/LHUIHelpers
//
//  Created by Leo Ho on 2023/6/23.
//

import UIKit

public extension String {
    
    /// 計算字的大小
    /// - Parameters:
    ///   - font: 字體
    /// - Returns: 字的大小
    func size(with font: UIFont) -> CGSize {
        return NSString(string: self).size(withAttributes: [.font : font])
    }
}
