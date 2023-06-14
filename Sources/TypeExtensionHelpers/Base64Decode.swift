//
//  Base64Decode.swift
//  SwiftHelpers/TypeExtensionHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

/// 定義 base64 解碼過程中可能發生的錯誤
public enum Base64DecodeError: Error, CustomStringConvertible {
    
    /// 解碼失敗
    case decodeFailed
    
    /// 字串 UTF8 編碼失敗
    case stringUTF8EncodeFailed
    
    public var description: String {
        let base = "Base64 Decode Failed - "
        
        switch self {
        case .decodeFailed:
            return base + "解碼失敗"
        case .stringUTF8EncodeFailed:
            return base + "字串 UTF8 編碼失敗"
        }
    }
}

public extension String {
    
    // MARK: base64 Decode
    
    /// 將 base64 編碼字串進行解碼
    /// - Returns: UTF-8 編碼格式的字串
    func base64DecodedString() throws -> Self {
        guard let data = Data(base64Encoded: self) else {
            throw Base64DecodeError.decodeFailed
        }
        
        guard let result = String(data: data, encoding: .utf8) else {
            throw Base64DecodeError.stringUTF8EncodeFailed
        }
        
        return result
    }
    
    /// 將 base64URL 編碼字串進行解碼
    /// - Returns: UTF-8 編碼格式的字串
    func base64URLDecodedString() throws -> Self {
        var base64 = self.base64EncodedString()
        
        guard let data = Data(base64Encoded: base64) else {
            throw Base64DecodeError.decodeFailed
        }
        
        guard let result = String(data: data, encoding: .utf8) else {
            throw Base64DecodeError.stringUTF8EncodeFailed
        }
        
        return result
    }
}
