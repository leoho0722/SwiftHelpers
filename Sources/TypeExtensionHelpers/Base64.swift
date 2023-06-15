//
//  Base64.swift
//  SwiftHelpers/TypeExtensionHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

/// Base64 Encoder / Decoder
public struct Base64Coder {
    
    // MARK: - base64 Encode
    
    /// 將 base64URL 編碼字串轉換成 base64 編碼字串
    /// - Parameters:
    ///   - base64URL: base64URL 編碼字串
    /// - Returns: base64 編碼字串
    public static func base64EncodedString(base64URL: String) -> String {
        var base64 = base64URL
            .replacingOccurrences(of: "-", with: "+")
            .replacingOccurrences(of: "_", with: "/")
        
        if base64.count % 4 != 0 {
            let str = String(repeating: "=", count: 4 - base64.count % 4)
            base64.append(str)
        }
        
        return base64
    }
    
    /// 將 base64 編碼字串轉換成 base64URL 編碼字串
    /// - Parameters:
    ///   - base64: base64 編碼字串
    /// - Returns: base64URL 編碼字串
    public static func base64URLEncodedString(base64: String) -> String {
        var base64URL = base64
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
        
        if base64URL.count % 4 != 0 {
            let str = String(repeating: "=", count: 4 - base64URL.count % 4)
            base64URL.append(str)
        }
        
        return base64URL
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
    
    /// 將 base64 編碼字串解碼成 `Data`
    ///
    /// [enum Base64DecodeError](x-source-tag://Base64DecodeError)
    ///
    /// - Parameters:
    ///   - base64Encoded: base64 編碼字串
    /// - Throws: ``Base64DecodeError``
    /// - Returns: 透過 base64 編碼字串初始化的 `Data`
    public static func base64DecodedData(base64Encoded: String) throws -> Data {
        guard let base64DecodedData = Data(base64Encoded: base64Encoded) else {
            throw Base64DecodeError.decodeFailed
        }
        
        return base64DecodedData
    }
    
    /// 將 base64URL 編碼字串解碼成 `Data`
    ///
    /// [enum Base64DecodeError](x-source-tag://Base64DecodeError)
    ///
    /// - Parameters:
    ///   - base64URLEncoded: base64URL 編碼字串
    /// - Throws: ``Base64DecodeError``
    /// - Returns: 透過 base64URL 編碼字串初始化的 `Data`
    public static func base64URLDecodedData(base64URLEncoded: String) throws -> Data {
        let base64 = Base64Coder.base64EncodedString(base64URL: base64URLEncoded)
        
        guard let base64URLDecodedData = Data(base64Encoded: base64) else {
            throw Base64DecodeError.decodeFailed
        }
        
        return base64URLDecodedData
    }
    
    /// 將 base64 編碼字串進行解碼
    ///
    /// [enum Base64DecodeError](x-source-tag://Base64DecodeError)
    ///
    /// - Parameters:
    ///   - base64Encoded: base64 編碼字串
    /// - Throws: ``Base64DecodeError``
    /// - Returns: UTF-8 編碼格式的字串
    public static func base64DecodedString(base64Encoded: String) throws -> String {
        guard let data = Data(base64Encoded: base64Encoded) else {
            throw Base64DecodeError.decodeFailed
        }
        
        guard let result = String(data: data, encoding: .utf8) else {
            throw Base64DecodeError.stringUTF8EncodeFailed
        }
        
        return result
    }
    
    /// 將 base64URL 編碼字串進行解碼
    ///
    /// [enum Base64DecodeError](x-source-tag://Base64DecodeError)
    ///
    /// - Parameters:
    ///   - base64URLEncoded: base64URL 編碼字串
    /// - Throws: ``Base64DecodeError``
    /// - Returns: UTF-8 編碼格式的字串
    public static func base64URLDecodedString(base64URLEncoded: String) throws -> String {
        let base64 = Base64Coder.base64EncodedString(base64URL: base64URLEncoded)
        
        guard let data = Data(base64Encoded: base64) else {
            throw Base64DecodeError.decodeFailed
        }
        
        guard let result = String(data: data, encoding: .utf8) else {
            throw Base64DecodeError.stringUTF8EncodeFailed
        }
        
        return result
    }
}
