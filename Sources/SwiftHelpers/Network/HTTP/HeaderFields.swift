//
//  HeaderFields.swift
//  SwiftHelpers/Network
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

public extension HTTP {
    
    /// Define the HTTP Header Fields of the HTTP Request request
    enum HeaderFields: String, CustomStringConvertible {
        
        /// HTTP Request HeaderFields，Authorization
        case authentication = "Authorization"
        
        /// HTTP Request HeaderFields， Content-Type
        case contentType = "Content-Type"
        
        /// HTTP Request HeaderFields，Accept
        case acceptType = "Accept"
        
        /// HTTP Request HeaderFields，Accept-Encoding
        case acceptEncoding = "Accept-Encoding"
        
        /// HTTP Request HeaderFields，User-Key
        case userKey = "User-Key"
        
        /// HTTP Request HeaderFields，Cookie
        case cookie = "Cookie"
        
        public var description: String {
            let base = "[HTTP Header Fields] "
            return base + self.rawValue
        }
    }
}
