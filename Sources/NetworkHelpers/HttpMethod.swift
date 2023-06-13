//
//  HttpMethod.swift
//  SwiftHelpers/NetworkHelpers
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

/// 定義 Http Request 請求的 Http Method
public enum HttpMethod: String, CustomStringConvertible {
    
    case get = "GET"
    
    case head = "HEAD"
    
    case post = "POST"
    
    case put = "PUT"
    
    case delete = "DELETE"
    
    case connect = "CONNECT"
    
    case options = "OPTIONS"
    
    case trace = "TRACE"
    
    case patch = "PATCH"
    
    public var description: String {
        let base = "HTTP Method - "
        return base + self.rawValue
    }
}
