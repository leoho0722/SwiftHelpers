//
//  HttpMethod.swift
//  SwiftHelpers/LHNetworkHelpers
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

extension HttpConstants {
    
    /// 定義 Http Request 請求的 Http Method
    public enum HttpMethod: String, CustomStringConvertible {
        
        /// Http Request's Http Method，GET
        case `get` = "GET"
        
        /// Http Request's Http Method，HEAD
        case head = "HEAD"
        
        /// Http Request's Http Method，POST
        case post = "POST"
        
        /// Http Request's Http Method，PUT
        case put = "PUT"
        
        /// Http Request's Http Method，DELETE
        case delete = "DELETE"
        
        /// Http Request's Http Method，CONNECT
        case connect = "CONNECT"
        
        /// Http Request's Http Method，OPTIONS
        case options = "OPTIONS"
        
        /// Http Request's Http Method，TRACE
        case trace = "TRACE"
        
        /// Http Request's Http Method，PATCH
        case patch = "PATCH"
        
        public var description: String {
            let base = "HTTP Method - "
            return base + self.rawValue
        }
    }
}
