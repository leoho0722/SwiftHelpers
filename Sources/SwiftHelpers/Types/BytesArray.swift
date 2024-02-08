//
//  BytesArray.swift
//  SwiftHelpers/Types
//
//  Created by Leo Ho on 2023/6/15.
//

import Foundation

public struct BytesArrayConvertor {
    
    /// typealias to `Array<UInt8>`
    public typealias BytesArray = Array<UInt8>
    
    /// Convert hexadecimal string to ``BytesArray``
    ///
    /// BytesArray is typealias to `Array<UInt8>`
    ///
    /// - Parameters:
    ///   - hexString: hexadecimal string
    /// - Returns: ``BytesArray``
    public static func toBytesArray(from hexString: String) -> BytesArray {
        assert(
            hexString.count % 2 == 0,
            "The length of the input string is incorrect, every 8 characters are one character"
        )
        
        var bytes = BytesArray()
        var sum = 0
        
        // UTF-8 encoding range 0~9
        let numRange = 48 ... 57
        
        // UTF-8 encoding range a~f
        let lowercaseRange = 97 ... 102
        
        // UTF-8 encoding range A~F
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
                assertionFailure(
                    "The input string format does not match. Each character must be in the range of 0-9, a-f, A-F."
                )
            }
            
            sum = sum * 16 + intC
            
            if index % 2 != 0 {
                bytes.append(UInt8(sum))
                sum = 0
            }
        }
        
        return bytes
    }
    
    /// Convert ``BytesArray`` to hexadecimal string
    ///
    /// BytesArray is typealias to `Array<UInt8>`
    ///
    /// - Parameters:
    ///   - byteArray: ``BytesArray``
    /// - Returns: hexadecimal string
    public static func toHexString(from byteArray: BytesArray) -> String {
        return Data(bytes: byteArray, count: byteArray.count).toHexString()
    }
}
