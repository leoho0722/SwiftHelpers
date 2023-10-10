//
//  BytesArray.swift
//  SwiftHelpers/Type
//
//  Created by Leo Ho on 2023/6/15.
//

import Foundation

public struct BytesArrayConvertor {
    
    /// typealias to `Array<UInt8>`
    public typealias BytesArray = Array<UInt8>
    
    /// 將 16 進制字串轉為 BytesArray
    ///
    /// BytesArray is typealias to `Array<UInt8>`
    ///
    /// - Parameters:
    ///   - hexString: 16 進制字串
    /// - Returns: ``BytesArray``
    public static func toBytesArray(from hexString: String) -> BytesArray {
        assert(hexString.count % 2 == 0, "輸入的字串長度不對，每 8 個為一個字元")
        
        var bytes = BytesArray()
        var sum = 0
        
        // 0~9 的 UTF-8 編碼範圍
        let numRange = 48 ... 57
        
        // a-f 的 UTF-8 編碼範圍
        let lowercaseRange = 97 ... 102
        
        // A-F 的 UTF-8 編碼範圍
        let uppercaseRange = 65 ... 70
        
        for (index, char) in hexString.utf8CString.enumerated() {
            var intC = Int(char.byteSwapped)
            
            if intC == 0 {
                break
            } else if numRange.contains(intC) {
                intC -= 48
            } else if lowercaseRange.contains(intC) {
                intC -= 87
            } else if uppercaseRange.contains(intC) {
                intC -= 55
            } else {
                assertionFailure("輸入的字串格式不符合，每個字元皆需在 0-9、a-f、A-F 這個範圍內")
            }
            
            sum = sum * 16 + intC
            
            if index % 2 != 0 {
                bytes.append(UInt8(sum))
                sum = 0
            }
        }
        
        return bytes
    }
    
    /// 將 bytesArray 轉為 16 進制字串
    ///
    /// BytesArray is typealias to `Array<UInt8>`
    ///
    /// - Parameters:
    ///   - byteArray: ``BytesArray``
    /// - Returns: 16 進制字串
    public static func toHexString(from byteArray: BytesArray) -> String {
        return Data(bytes: byteArray, count: byteArray.count).toHexString()
    }
}
