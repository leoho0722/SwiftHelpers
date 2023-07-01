//
//  HttpHeaderFields.swift
//  SwiftHelpers/LHNetworkHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

extension HttpConstants {
    
    /// 定義 Http Request 請求的 Http Header Fields
    public enum HttpHeaderFields: String, CustomStringConvertible {
        
        /// Http Request's HeaderFields，Authorization
        case authentication = "Authorization"
        
        /// Http Request's HeaderFields， Content-Type
        case contentType = "Content-Type"
        
        /// Http Request's HeaderFields，Accept
        case acceptType = "Accept"
        
        /// Http Request's HeaderFields，Accept-Encoding
        case acceptEncoding = "Accept-Encoding"
        
        /// Http Request's HeaderFields，User-Key
        case userKey = "User-Key"
        
        /// Http Request's HeaderFields，Cookie
        case cookie = "Cookie"
        
        public var description: String {
            let base = "HTTP Header Fields - "
            return base + self.rawValue
        }
    }
}
