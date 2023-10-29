//
//  HeaderFields.swift
//  SwiftHelpers/Network
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

public extension HTTP {
    
    /// Define the HTTP Header Fields of the HTTP Request request
    enum HTTPHeaderFields: String, CustomStringConvertible {
        
        /// HTTP Request's HeaderFields，Authorization
        case authentication = "Authorization"
        
        /// HTTP Request's HeaderFields， Content-Type
        case contentType = "Content-Type"
        
        /// HTTP Request's HeaderFields，Accept
        case acceptType = "Accept"
        
        /// HTTP Request's HeaderFields，Accept-Encoding
        case acceptEncoding = "Accept-Encoding"
        
        /// HTTP Request's HeaderFields，User-Key
        case userKey = "User-Key"
        
        /// HTTP Request's HeaderFields，Cookie
        case cookie = "Cookie"
        
        public var description: String {
            let base = "HTTP Header Fields: "
            return base + self.rawValue
        }
    }
}
