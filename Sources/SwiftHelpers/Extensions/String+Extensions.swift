//
//  StringSizeCalculator.swift
//  SwiftHelpers/Extensions
//
//  Created by Leo Ho on 2023/6/23.
//

import UIKit

public extension String {
    
    /// 計算字的大小
    /// - Parameters:
    ///   - font: 字體
    /// - Returns: 字的大小
    func size(with font: UIFont) -> CGSize {
        return NSString(string: self).size(withAttributes: [.font : font])
    }
    
    /// 將 16 進制字串轉為 Data
    /// - Throws: ``NSError``
    /// - Returns: nil or `Data` with hexadecimal
    func toHexData() throws -> Data? {
        var data = Data(capacity: self.count / 2)
        
        let regex = try NSRegularExpression(pattern: "[0-9a-f]{1,2}", options: .caseInsensitive)
        regex.enumerateMatches(in: self, range: NSMakeRange(0, utf16.count)) { match, flags, _ in
            let byteString = (self as NSString).substring(with: match!.range)
            var num = UInt8(byteString, radix: 16)!
            data.append(&num, count: 1)
        }
        
        guard data.count > 0 else {
            return nil
        }
        
        return data
    }
}
