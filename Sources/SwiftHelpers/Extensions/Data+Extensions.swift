//
//  Data+Extensions.swift
//  SwiftHelpers/Extensions
//
//  Created by Leo Ho on 2023/6/15.
//

import Foundation

public extension Data {
    
    /// 將 Data 轉為 16 進制字串
    /// - Returns: `String` with hexadecimal
    func toHexString() -> String {
        return map {
            String(format: "%02x", $0)
        }.joined()
    }
}
