//
//  Base64+Protocols.swift
//  SwiftHelpers/Types/Base64
//
//  Created by Leo Ho on 2024/2/8.
//

import Foundation

public typealias Base64Codable = Base64Encodable & Base64Decodable

public protocol Base64Encodable {
    
    /// Base64 encode the string
    /// - Parameters:
    ///   - original: The string to be base64 encoded
    /// - Returns: Encoded base64 string
    static func base64EncodedString(from original: String) -> String
    
    /// Base64URL encode the string
    /// - Parameters:
    ///   - original: The string to be base64URL encoded
    /// - Returns: Encoded base64URL string
    static func base64URLEncodedString(from original: String) -> String
    
    /// Base64 encode the string (no padding added)
    /// - Parameters:
    ///   - original: The string to be base64 encoded
    /// - Returns: Encoded base64 string
    static func base64RawEncodedString(from original: String) -> String
    
    /// Base64URL encode the string (no padding added)
    /// - Parameters:
    ///   - original: The string to be base64URL encoded
    /// - Returns: Encoded base64URL string
    static func base64URLRawEncodedString(from original: String) -> String
}

public protocol Base64Decodable {
    
    /// Decode base64 encoded string
    /// - Parameters:
    ///   - encodedString: Encoded base64 string
    /// - Returns: The string without base64 encoding
    static func base64DecodedString(from encodedString: String) throws -> String
    
    /// Decode base64URL encoded string
    /// - Parameters:
    ///   - encodedString: Encoded base64URL string
    /// - Returns: The string without base64URL encoding
    static func base64URLDecodedString(from encodedString: String) throws -> String
    
    /// Decode base64 encoded string (no padding added)
    /// - Parameters:
    ///   - encodedString: Encoded base64 string (no padding added)
    /// - Returns: The string without base64 encoding
    static func base64RawDecodedString(from encodedString: String) throws -> String
    
    /// Decode base64URL encoded string (no padding added)
    /// - Parameters:
    ///   - encodedString: Encoded base64URL string (no padding added)
    /// - Returns: The string without base64URL encoding
    static func base64URLRawDecodedString(from encodedString: String) throws -> String
}

public protocol Base64Convertable {
    
    /// Convert base64, base64URL encoded string to base64URL, base64 encoded string
    /// - Parameters:
    ///   - str: base64, base64URL encoded string to convert
    ///   - old: original encoding
    ///   - new: encoding to convert
    /// - Returns: Converted encoded string
    static func convert(with str: String, from old: Base64.Encoding, to new: Base64.Encoding) -> String
}
