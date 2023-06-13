//
//  JsonEncodeError.swift
//  SwiftHelpers/NetworkHelpers
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

/// 定義 Json 編碼過程中可能發生的錯誤
public enum JsonEncodeError: CustomStringConvertible, Error {
    
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
