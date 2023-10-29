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
    public enum JSONEncodeError: Error, CustomStringConvertible {
        
        /// Failed to convert Encodable Data to `Dictionary<String, Any>` through `JSONSerialization.jsonObject`
        case encodableToDictFailed
        
        /// Failed to convert `Dictionary<String, Any>` to `Data` through `JSONSerialization.data`
        case dictToDataFailed
        
        public var description: String {
            switch self {
            case .encodableToDictFailed:
                return "Failed to convert Encodable Data to `Dictionary<String, Any>` through `JSONSerialization.jsonObject`"
            case .dictToDataFailed:
                return "Failed to convert `Dictionary<String, Any>` to `Data` through `JSONSerialization.data`"
            }
        }
    }
    
    /// Convert Encodable Object to JSON Data
    ///
    /// - Parameters:
    ///   - data: Encodable Object
    /// - Throws: ``JSONEncodeError``
    /// - Returns: JSON Data
    public static func toJsonData<E>(data: E) throws -> Data where E: Encodable {
        let encoder = JSONEncoder()
        
        let data = try encoder.encode(data)
        
        guard let dict = try JSONSerialization.jsonObject(with: data, 
                                                          options: .fragmentsAllowed) as? Dictionary<String, Any> else {
            throw JSONEncodeError.encodableToDictFailed
        }
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
            return jsonData
        } catch {
            throw JSONEncodeError.dictToDataFailed
        }
    }
}
