//
//  Base64Encode.swift
//  SwiftHelpers/TypeExtensionHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

public extension String {
    
    // MARK: base64 Encode
    
    /// 將 base64URL 編碼字串轉換成 base64 編碼字串
    /// - Returns: base64 編碼字串
    func base64EncodedString() -> Self {
        var base64 = self
            .replacingOccurrences(of: "-", with: "+")
            .replacingOccurrences(of: "_", with: "/")
        
        if base64.count % 4 != 0 {
            base64.append(String(repeating: "=", count: 4 - base64.count % 4))
        }
        
        return base64
    }
    
    /// 將 base64 編碼字串轉換成 base64URL 編碼字串
    /// - Returns: base64URL 編碼字串
    func base64URLEncodedString() -> Self {
        var base64URL = self
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
        
        if base64URL.count % 4 != 0 {
            base64URL.append(String(repeating: "=", count: 4 - base64URL.count % 4))
        }
        
        return base64URL
    }
}
