//
//  Encodable+Extensions.swift
//  SwiftHelpers/Extensions
//
//  Created by Leo Ho on 2023/10/10.
//

import Foundation

public extension Encodable {
    
    /// 將 Encodable Object 轉換成 Dictionary<String, Any>
    ///
    /// [enum JSONEncodeError](x-source-tag://JSONEncodeError)
    ///
    /// - Parameters:
    ///   - data: Encodable Object
    /// - Throws: JSONEncodeError
    /// - Returns: Dictionary<String, Any>
    func toDictionary() throws -> Dictionary<String, Any> {
        let encoder = JSONEncoder()
        
        let data = try encoder.encode(self)
        
        guard let dict = try JSONSerialization.jsonObject(with: data,
                                                          options: .fragmentsAllowed) as? Dictionary<String, Any> else {
            throw JSON.JSONEncodeError.encodableToDictFailed
        }
        
        return dict
    }
}
