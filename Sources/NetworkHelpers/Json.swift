//
//  Json.swift
//  SwiftHelpers/NetworkHelpers
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

public extension Encodable {
    
    /// 將 Encodable Object 轉換成 Json Data
    /// - Throws: JsonEncodeError
    /// - Returns: Json Data
    func toJsonData() throws -> Data {
        let encoder = JSONEncoder()
        
        let data = try encoder.encode(self)
        
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
