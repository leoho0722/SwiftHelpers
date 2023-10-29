//
//  Data+Extensions.swift
//  SwiftHelpers/Extensions
//
//  Created by Leo Ho on 2023/6/15.
//

import Foundation

public extension Data {
    
    /// Convert Data to hexadecimal string
    /// - Returns: Hexadecimal string
    func toHexString() -> String {
        return map {
            String(format: "%02x", $0)
        }.joined()
    }
}
