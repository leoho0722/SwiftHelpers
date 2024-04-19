//
//  ContentType.swift
//  SwiftHelpers/Network
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

public extension HTTP {
    
    /// Define the HTTP Content-Type of the HTTP Request
    enum ContentType: String, CustomStringConvertible {
        
        /// HTTP Request body Content-Type，JSON
        case json = "application/json"
        
        /// HTTP Request body Content-Type，XML
        case xml = "application/xml"
        
        /// HTTP Request body Content-Type，text/plain
        case textPlain = "text/plain"
        
        /// HTTP Request body Content-Type，x-www-form-urlencoded
        case x_www_form_urlencoded = "application/x-www-form-urlencoded"
        
        /// HTTP Request body Content-Type，multipart/form-data
        case formData = "multipart/form-data"
        
        /// HTTP Request body Content-Type，application/octet-stream
        case octetStream = "application/octet-stream"
        
        public var description: String {
            let base = "[HTTP Content-Type] "
            return base + self.rawValue
        }
    }
}
