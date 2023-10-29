//
//  Base64.swift
//  SwiftHelpers/Type
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

/// Base64 Encoder / Decoder
public struct Base64 {
    
    /// Select the base64/base64URL conversion operation to perform
    public enum Base64Operation {
        
        /// Perform base64 conversion operations
        case base64
        
        /// Perform base64URL conversion operations
        case base64URL
    }
    
    // MARK: - Base64 Encode
    
    /// Convert base64 / base64URL encoded string to base64URL / base64 encoded string
    /// - Parameters:
    ///   - str:  base64 / base64URL encoded string
    ///   - operation: ``Base64Operation``, perform base64 / base64URL conversion operation
    /// - Returns: base64URL / base64 encoded string
    public static func base64EncodedString(from str: String,
                                           operation: Base64.Base64Operation) -> String {
        var result: String
        
        switch operation {
        case .base64:
            // Convert base64URL encoded string to base64 encoded string
            result = str
                .replacingOccurrences(of: "-", with: "+")
                .replacingOccurrences(of: "_", with: "/")
        case .base64URL:
            // Convert base64 encoded string to base64URL encoded string
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
    
    // MARK: - Base64 Decode
    
    /// Defines errors that may occur during base64 decoding
    /// - Tag: Base64DecodeError
    public enum Base64DecodeError: Error, CustomStringConvertible {
        
        /// base64 decoding failed
        case decodeFailed
        
        /// String UTF8 encoding failed
        case stringUTF8EncodeFailed
        
        public var description: String {
            let base = "Base64 Decode Failed: "
            
            switch self {
            case .decodeFailed:
                return base + "base64 decoding failed"
            case .stringUTF8EncodeFailed:
                return base + "String UTF8 encoding failed"
            }
        }
    }
    
    /// Decode base64 / base64URL encoded string into `Data`
    ///
    /// - Parameters:
    ///   - str: base64 / base64URL encoded string
    ///   - operation: ``Base64Operation``, perform base64 / base64URL conversion operation
    /// - Throws: ``Base64DecodeError``
    /// - Returns: `Data` initialized via base64 / base64URL encoded string
    public static func base64DecodedData(from str: String,
                                         operation: Base64.Base64Operation) throws -> Data {
        switch operation {
        case .base64:
            // Decode base64 encoded string into Data
            guard let base64DecodedData = Data(base64Encoded: str) else {
                throw Base64DecodeError.decodeFailed
            }
            
            return base64DecodedData
        case .base64URL:
            // Decode base64URL encoded string into Data
            let base64 = Base64.base64EncodedString(from: str, operation: .base64)
            
            guard let base64URLDecodedData = Data(base64Encoded: base64) else {
                throw Base64DecodeError.decodeFailed
            }
            
            return base64URLDecodedData
        }
    }
    
    /// Decode base64 / base64URL encoded string into UTF-8 encoded string
    ///
    /// - Parameters:
    ///   - str: base64 / base64URL encoded string
    ///   - operation: ``Base64Operation``, perform base64 / base64URL conversion operation
    /// - Throws: ``Base64DecodeError``
    /// - Returns: UTF-8 encoded string
    public static func base64DecodedString(from str: String,
                                           operation: Base64.Base64Operation) throws -> String {
        switch operation {
        case .base64:
            // Decode base64 encoded string into UTF-8 string
            guard let data = Data(base64Encoded: str) else {
                throw Base64DecodeError.decodeFailed
            }
            
            guard let result = String(data: data, encoding: .utf8) else {
                throw Base64DecodeError.stringUTF8EncodeFailed
            }
            
            return result
        case .base64URL:
            // Decode base64URL encoded string into UTF-8 string
            let base64 = Base64.base64EncodedString(from: str, operation: .base64)
            
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
