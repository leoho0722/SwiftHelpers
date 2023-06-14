//
//  File.swift
//  SwiftHelpers/NetworkHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

extension HttpConstants {
    
    /// 定義 Http Request 請求的 Http Header Fields
    public enum HttpHeaderFields: String, CustomStringConvertible {
        
        case authentication = "Authorization"
        
        case contentType = "Content-Type"
        
        case acceptType = "Accept"
        
        case acceptEncoding = "Accept-Encoding"
        
        case userKey = "User-Key"
        
        case cookie = "Cookie"
        
        public var description: String {
            let base = "HTTP Header Fields - "
            return base + self.rawValue
        }
    }
}
