//
//  Method.swift
//  SwiftHelpers/Network
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

public extension HTTP {
    
    /// Define the HTTP Method of the HTTP Request request
    enum HTTPMethod: String, CustomStringConvertible {
        
        /// HTTP Method - GET
        case `get` = "GET"
        
        /// HTTP Method - HEAD
        case head = "HEAD"
        
        /// HTTP Method - POST
        case post = "POST"
        
        /// HTTP Method - PUT
        case put = "PUT"
        
        /// HTTP Method - DELETE
        case delete = "DELETE"
        
        /// HTTP Method - CONNECT
        case connect = "CONNECT"
        
        /// HTTP Method - OPTIONS
        case options = "OPTIONS"
        
        /// HTTP Method - TRACE
        case trace = "TRACE"
        
        /// HTTP Method - PATCH
        case patch = "PATCH"
        
        public var description: String {
            let base = "HTTP Method: "
            return base + self.rawValue
        }
    }
}
