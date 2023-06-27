//
//  HttpContentType.swift
//  SwiftHelpers/NetworkHelpers
//
//  Created by Leo Ho on 2023/6/14.
//

import Foundation

extension HttpConstants {
   
    /// 定義 Http Request 請求的 Http Content-Type
    public enum HttpContentType: String, CustomStringConvertible {
        
        /// Http Request's body Content-Type，JSON
        case json = "application/json"
        
        /// Http Request's body Content-Type，XML
        case xml = "application/xml"
        
        /// Http Request's body Content-Type，text/plain
        case textPlain = "text/plain"
        
        /// Http Request's body Content-Type，x-www-form-urlencoded
        case x_www_form_urlencoded = "application/x-www-form-urlencoded"
        
        public var description: String {
            let base = "HTTP Content-Type - "
            return base + self.rawValue
        }
    }
}
