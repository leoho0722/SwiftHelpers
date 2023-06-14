//
//  HttpContentType.swift
//  SwiftHelpers/NetworkHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

extension HttpConstants {
   
    /// 定義 Http Request 請求的 Http Content-Type
    public enum HttpContentType: String, CustomStringConvertible {
        
        case json = "application/json"
        
        case xml = "application/xml"
        
        case textPlain = "text/plain"
        
        case x_www_form_urlencoded = "application/x-www-form-urlencoded"
        
        public var description: String {
            let base = "HTTP Content-Type - "
            return base + self.rawValue
        }
    }
}
