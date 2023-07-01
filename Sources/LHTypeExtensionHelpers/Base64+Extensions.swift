//
//  Base64+Extensions.swift
//  SwiftHelpers/LHTypeExtensionHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

/// Base64 Encoder / Decoder
public struct Base64Coder {
    
    /// 選擇要進行的 base64／base64URL 轉換操作
    public enum Base64Operation {
        
        /// 進行 base64 轉換操作
        case base64
        
        /// 進行 base64 URL 轉換操作
        case base64URL
    }
    
    // MARK: - base64 Encode
    
    /// 將 base64／base64URL 編碼字串轉換成 base64URL／base64 編碼字串
    /// - Parameters:
    ///   - str:  base64／base64URL 編碼字串
    ///   - operation: ``Base64Operation``，進行 base64／base64URL 轉換操作
    /// - Returns: base64URL／base64 編碼字串
    public static func base64EncodedString(from str: String,
                                           operation: Base64Coder.Base64Operation) -> String {
        var result: String
        
        switch operation {
        case .base64:
            // 將 base64URL 編碼字串轉成 base64 編碼字串
            result = str
                .replacingOccurrences(of: "-", with: "+")
                .replacingOccurrences(of: "_", with: "/")
        case .base64URL:
            // 將 base64 編碼字串轉成 base64URL 編碼字串
            result = str
                .replacingOccurrences(of: "+", with: "-")
                .replacingOccurrences(of: "/", with: "_")
        }
        
        if result.count % 4 != 0 {
            let str = String(repeating: "=", count: 4 - result.count % 4)
            result.append(str)
        }
        
        return result
    }
    
    // MARK: - base64 Decode
    
    /// 定義 base64 解碼過程中可能發生的錯誤
    /// - Tag: Base64DecodeError
    public enum Base64DecodeError: Error, CustomStringConvertible {
        
        /// base64 解碼失敗
        case decodeFailed
        
        /// 字串 UTF8 編碼失敗
        case stringUTF8EncodeFailed
        
        public var description: String {
            let base = "Base64 Decode Failed - "
            
            switch self {
            case .decodeFailed:
                return base + "base64 解碼失敗"
            case .stringUTF8EncodeFailed:
                return base + "字串 UTF8 編碼失敗"
            }
        }
    }
    
    /// 將 base64／base64URL 編碼字串解碼成 `Data`
    ///
    /// [enum Base64DecodeError](x-source-tag://Base64DecodeError)
    ///
    /// - Parameters:
    ///   - str: base64／base64URL 編碼字串
    ///   - operation: ``Base64Operation``，進行 base64／base64URL 轉換操作
    /// - Throws: ``Base64DecodeError``
    /// - Returns: 透過 base64／base64URL 編碼字串初始化的 `Data`
    public static func base64DecodedData(from str: String,
                                         operation: Base64Coder.Base64Operation) throws -> Data {
        switch operation {
        case .base64:
            // 將 base64 編碼字串解碼成 Data
            guard let base64DecodedData = Data(base64Encoded: str) else {
                throw Base64DecodeError.decodeFailed
            }
            
            return base64DecodedData
        case .base64URL:
            // 將 base64URL 編碼字串解碼成 Data
            let base64 = Base64Coder.base64EncodedString(from: str, operation: .base64)
            
            guard let base64URLDecodedData = Data(base64Encoded: base64) else {
                throw Base64DecodeError.decodeFailed
            }
            
            return base64URLDecodedData
        }
    }
    
    /// 將 base64／base64URL 編碼字串解碼成 UTF-8 編碼字串
    ///
    /// [enum Base64DecodeError](x-source-tag://Base64DecodeError)
    ///
    /// - Parameters:
    ///   - str: base64／base64URL 編碼字串
    ///   - operation: ``Base64Operation``，進行 base64／base64URL 轉換操作
    /// - Throws: ``Base64DecodeError``
    /// - Returns: UTF-8 編碼格式的字串
    public static func base64DecodedString(from str: String,
                                           operation: Base64Coder.Base64Operation) throws -> String {
        switch operation {
        case .base64:
            // 將 base64 編碼字串解碼成 UTF-8 字串
            guard let data = Data(base64Encoded: str) else {
                throw Base64DecodeError.decodeFailed
            }
            
            guard let result = String(data: data, encoding: .utf8) else {
                throw Base64DecodeError.stringUTF8EncodeFailed
            }
            
            return result
        case .base64URL:
            // 將 base64URL 編碼字串解碼成 UTF-8 字串
            let base64 = Base64Coder.base64EncodedString(from: str, operation: .base64)
            
            guard let data = Data(base64Encoded: base64) else {
                throw Base64DecodeError.decodeFailed
            }
            
            guard let result = String(data: data, encoding: .utf8) else {
                throw Base64DecodeError.stringUTF8EncodeFailed
            }
            
            return result
        }
    }
}
