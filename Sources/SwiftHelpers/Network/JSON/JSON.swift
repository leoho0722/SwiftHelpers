//
//  JSON.swift
//  SwiftHelpers/Network
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

/// JSON Encoder / Decoder
public struct JSON {
    
    /// Define errors that may occur during JSON encoding
    /// - Tag: JSONEncodeError
    public enum JSONEncodeError: LocalizedError, CustomNSError {
        
        /// Failed to convert `Encodable Object` to `Dictionary<String, Any>` through `JSONSerialization.jsonObject`
        case encodableToDictFailed
        
        /// Failed to encode `Encodable Object` to `Data` through `JSONSerialization.data`
        case encodingToJSONFailed
        
        // MARK: - Implementation LocalizedError
        
        public var errorDescription: String {
            switch self {
            case .encodableToDictFailed:
                return "Failed to convert Encodable Object to `Dictionary<String, Any>` through `JSONSerialization.jsonObject`"
            case .encodingToJSONFailed:
                return "Failed to convert `Dictionary<String, Any>` to `Data` through `JSONSerialization.data`"
            }
        }
        
        // MARK: - Implementation CustomNSError
        
        public var errorCode: Int {
            switch self {
            case .encodableToDictFailed:
                return 0
            case .encodingToJSONFailed:
                return 1
            }
        }
        
        public var errorUserInfo: [String : Any] {
            switch self {
            case .encodableToDictFailed:
                return [
                    "message" : "Failed to convert Encodable Object to `Dictionary<String, Any>` through `JSONSerialization.jsonObject`"
                ]
            case .encodingToJSONFailed:
                return [
                    "message" : "Failed to encode `Encodable Object` to `Data` through `JSONSerialization.data`"
                ]
            }
        }
        
        public static var errorDomain: String {
            return "JSONEncodeError"
        }
    }
    
    /// Encode Encodable Object to JSON Data
    ///
    /// - Parameters:
    ///   - data: Encodable Object
    /// - Throws: ``JSONEncodeError``
    /// - Returns: JSON Data
    public static func toJsonData<E>(data: E) throws -> Data where E: Encodable {
        do {
            let jsonData = try JSONEncoder().encode(data)
            return jsonData
        } catch {
            throw JSONEncodeError.encodingToJSONFailed
        }
    }
}
