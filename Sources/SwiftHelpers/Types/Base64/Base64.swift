//
//  Base64.swift
//  SwiftHelpers/Types/Base64
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

/// Base64 Encoder / Decoder
public struct Base64 {
    
    public init() {}
    
    /// Select the base64/base64URL conversion operation to perform
    /// - Tag: Encoding
    public enum Encoding {
        
        /// Perform base64 conversion operations
        case base64
        
        /// Perform base64URL conversion operations
        case base64URL
    }
    
    /// Defines errors that may occur during base64 decoding
    /// - Tag: DecodingError
    enum DecodingError: Error, CustomStringConvertible {
        
        /// base64 decoding failed
        case decodeFailed
        
        /// String UTF8 encoding failed
        case stringUTF8EncodeFailed
        
        public var description: String {
            let `prefix` = "Base64 Decode Failed: "
            
            switch self {
            case .decodeFailed:
                return `prefix` + "base64 decoding failed"
            case .stringUTF8EncodeFailed:
                return `prefix` + "String UTF8 encoding failed"
            }
        }
    }
    
    /// Fix base64, base64URL encode string to valid length using append padding
    /// - Parameters:
    ///   - str: base64, base64URL encode string
    internal static func fixToValidLength(with str: inout String) {
        if str.count % 4 > 0 {
            let padding = String(repeating: "=", count: 4 - str.count % 4)
            str += padding
        }
    }
}

// MARK: - Base64 Convert

extension Base64: Base64Convertable {
    
    public static func convert(
        with str: String,
        from old: Base64.Encoding,
        to new: Base64.Encoding
    ) -> String {
        var result: String
        
        switch old {
        case .base64:
            switch new {
            case .base64:
                // The encoding of the old str is the same as the encoding of the new
                // No conversion required
                return str
            case .base64URL:
                // Convert base64 encoded string to base64URL encoded string
                result = str
                    .replacingOccurrences(of: "+", with: "-")
                    .replacingOccurrences(of: "/", with: "_")
            }
        case .base64URL:
            switch new {
            case .base64:
                // Convert base64URL encoded string to base64 encoded string
                result = str
                    .replacingOccurrences(of: "-", with: "+")
                    .replacingOccurrences(of: "_", with: "/")
            case .base64URL:
                // The encoding of the old str is the same as the encoding of the new
                // No conversion required
                return str
            }
        }
        
        fixToValidLength(with: &result)
        
        return result
    }
}

// MARK: - Base64 Encode

extension Base64: Base64Encodable {
    
    public static func base64EncodedString(from original: String) -> String {
        let data = Data(original.utf8)
        var base64 = data.base64EncodedString()
        
        fixToValidLength(with: &base64)
        
        return base64
    }
    
    public static func base64URLEncodedString(from original: String) -> String {
        let base64 = base64EncodedString(from: original)
        var base64URL = base64
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
        
        fixToValidLength(with: &base64URL)
        
        return base64URL
    }
    
    public static func base64RawEncodedString(from original: String) -> String {
        let data = Data(original.utf8)
        let base64Raw = data.base64EncodedString()
            .replacingOccurrences(of: "=", with: "")
        return base64Raw
    }
    
    public static func base64URLRawEncodedString(from original: String) -> String {
        let base64Raw = base64RawEncodedString(from: original)
        let base64URLRaw = base64Raw
            .replacingOccurrences(of: "-", with: "+")
            .replacingOccurrences(of: "_", with: "/")
        return base64URLRaw
    }
}

// MARK: - Base64 Decode

extension Base64: Base64Decodable {
    
    public static func base64DecodedString(from encodedString: String) throws -> String {
        // Decode base64 encoded string into UTF-8 string
        guard let data = Data(base64Encoded: encodedString) else {
            throw Base64.DecodingError.decodeFailed
        }
        
        guard let result = String(data: data, encoding: .utf8) else {
            throw Base64.DecodingError.stringUTF8EncodeFailed
        }
        
        return result
    }
    
    public static func base64URLDecodedString(from encodedString: String) throws -> String {
        let base64 = convert(with: encodedString, from: .base64URL, to: .base64)
        
        // Decode base64 encoded string into UTF-8 string
        guard let data = Data(base64Encoded: base64) else {
            throw Base64.DecodingError.decodeFailed
        }
        
        guard let result = String(data: data, encoding: .utf8) else {
            throw Base64.DecodingError.stringUTF8EncodeFailed
        }
        
        return result
    }
    
    public static func base64RawDecodedString(from encodedString: String) throws -> String {
        var encoded = encodedString
        
        fixToValidLength(with: &encoded)
        
        // Decode base64 encoded string into UTF-8 string
        guard let data = Data(base64Encoded: encoded) else {
            throw Base64.DecodingError.decodeFailed
        }
        
        guard let result = String(data: data, encoding: .utf8) else {
            throw Base64.DecodingError.stringUTF8EncodeFailed
        }
        
        return result
    }
    
    public static func base64URLRawDecodedString(from encodedString: String) throws -> String {
        let base64 = convert(with: encodedString, from: .base64URL, to: .base64)
        
        // Decode base64 encoded string into UTF-8 string
        guard let data = Data(base64Encoded: base64) else {
            throw Base64.DecodingError.decodeFailed
        }
        
        guard let result = String(data: data, encoding: .utf8) else {
            throw Base64.DecodingError.stringUTF8EncodeFailed
        }
        
        return result
    }
}

// MARK: - Deprecated

public extension Base64 {
    
    /// Convert base64 / base64URL encoded string to base64URL / base64 encoded string
    /// - Parameters:
    ///   - str:  base64 / base64URL encoded string
    ///   - operation: ``Encoding``, perform base64 / base64URL conversion operation
    /// - Returns: base64URL / base64 encoded string
    @available(
        *,
         deprecated,
         renamed: "base64EncodedString(from:)",
         message: "Deprecated since version 0.0.17, renamed to base64EncodedString(from:) and will be removed in a future version"
    )
    static func base64EncodedString(from str: String,
                                    operation: Base64.Encoding) -> String {
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
        
        guard operation == .base64 || operation == .base64URL else {
            return result
        }
        
        if result.count % 4 != 0 {
            let str = String(repeating: "=", count: 4 - result.count % 4)
            result.append(str)
        }
        
        return result
    }
    
    /// Decode base64 / base64URL encoded string into `Data`
    ///
    /// - Parameters:
    ///   - str: base64 / base64URL encoded string
    ///   - operation: ``Decoding``, perform base64 / base64URL conversion operation
    /// - Throws: ``DecodingError``
    /// - Returns: `Data` initialized via base64 / base64URL encoded string
    @available(*, unavailable)
    static func base64DecodedData(from str: String,
                                  operation: Base64.Encoding) throws -> Data {
        switch operation {
        case .base64:
            // Decode base64 encoded string into Data
            guard let base64DecodedData = Data(base64Encoded: str) else {
                throw Base64.DecodingError.decodeFailed
            }
            
            return base64DecodedData
        case .base64URL:
            // Decode base64URL encoded string into Data
            let base64 = Base64.base64EncodedString(from: str, operation: .base64)
            
            guard let base64URLDecodedData = Data(base64Encoded: base64) else {
                throw Base64.DecodingError.decodeFailed
            }
            
            return base64URLDecodedData
        }
    }
    
    /// Decode base64 / base64URL encoded string into UTF-8 encoded string
    ///
    /// - Parameters:
    ///   - str: base64 / base64URL encoded string
    ///   - operation: ``Encoding``, perform base64 / base64URL conversion operation
    /// - Throws: ``DecodingError``
    /// - Returns: UTF-8 encoded string
    @available(
        *,
         deprecated,
         renamed: "base64DecodedString(from:)",
         message: "Deprecated since version 0.0.17, renamed to base64DecodedString(from:) and will be removed in a future version"
    )
    static func base64DecodedString(from str: String,
                                    operation: Base64.Encoding) throws -> String {
        switch operation {
        case .base64:
            // Decode base64 encoded string into UTF-8 string
            guard let data = Data(base64Encoded: str) else {
                throw Base64.DecodingError.decodeFailed
            }
            
            guard let result = String(data: data, encoding: .utf8) else {
                throw Base64.DecodingError.stringUTF8EncodeFailed
            }
            
            return result
        case .base64URL:
            // Decode base64URL encoded string into UTF-8 string
            let base64 = Base64.base64EncodedString(from: str, operation: .base64)
            
            guard let data = Data(base64Encoded: base64) else {
                throw Base64.DecodingError.decodeFailed
            }
            
            guard let result = String(data: data, encoding: .utf8) else {
                throw Base64.DecodingError.stringUTF8EncodeFailed
            }
            
            return result
        }
    }
}
