//
//  JsonCoder.swift
//  SwiftHelpers/NetworkHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

/// Json Encoder / Decoder
public struct JsonCoder {
    
    /// 定義 Json 編碼過程中可能發生的錯誤
    /// - Tag: JsonEncodeError
    public enum JsonEncodeError: Error, CustomStringConvertible {
        
        /// 將 Encodable Data 透過 `JSONSerialization.jsonObject` 轉換成 `Dictionary<String, Any>` 失敗
        case encodableToDictFailed
        
        /// 將 `Dictionary<String, Any>` 透過 `JSONSerialization.data` 轉換成 `Data` 失敗
        case dictToDataFailed
        
        public var description: String {
            switch self {
            case .encodableToDictFailed:
                return "將 Encodable Data 透過 `JSONSerialization.jsonObject` 轉換成 `Dictionary<String, Any>` 失敗"
            case .dictToDataFailed:
                return "將 `Dictionary<String, Any>` 透過 `JSONSerialization.data` 轉換成 `Data` 失敗"
            }
        }
    }
    
    /// 將 Encodable Object 轉換成 Json Data
    ///
    /// [enum JsonEncodeError](x-source-tag://JsonEncodeError)
    ///
    /// - Parameters:
    ///   - data: Encodable Object
    /// - Throws: ``JsonEncodeError``
    /// - Returns: Json Data
    public static func toJsonData<E>(data: E) throws -> Data where E: Encodable {
        let encoder = JSONEncoder()
        
        let data = try encoder.encode(data)
        
        guard let dict = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) as? Dictionary<String, Any> else {
            throw JsonEncodeError.encodableToDictFailed
        }
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
            return jsonData
        } catch {
            throw JsonEncodeError.dictToDataFailed
        }
    }
}
