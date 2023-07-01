//
//  HttpStatus.swift
//  SwiftHelpers/LHNetworkHelpers
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

/// 定義發出 Http Request 後，收到 Response 的 Http Status Code
public struct HttpStatus {
    
    public enum Code: Int {
        
        // MARK: Status Code 1xx
        
        /// Http Status Code 100
        case `continue` = 100
        
        /// Http Status Code 101
        case switchingProtocols = 101
        
        /// Http Status Code 102
        case processing = 102
        
        /// Http Status Code 103
        case earlyHints = 103
        
        // MARK: Status Code 2xx
        
        /// Http Status Code 200
        case ok = 200
        
        /// Http Status Code 201
        case created = 201
        
        /// Http Status Code 202
        case accepted = 202
        
        /// Http Status Code 203
        case nonAuthoritativeInformation = 203
        
        /// Http Status Code 204
        case noContent = 204
        
        /// Http Status Code 205
        case resetContent = 205
        
        /// Http Status Code 206
        case partialContent = 206
        
        /// Http Status Code 207
        case multiStatus = 207
        
        /// Http Status Code 208
        case alreadyReported = 208
        
        /// Http Status Code 226
        case imUsed = 226
        
        // MARK: Status Code 3xx
        
        /// Http Status Code 300
        case multipleChoices = 300
        
        /// Http Status Code 301
        case movedPermanently = 301
        
        /// Http Status Code 302
        case found = 302
        
        /// Http Status Code 303
        case seeOther = 303
        
        /// Http Status Code 304
        case notModified = 304
        
        /// Http Status Code 307
        case temporaryRedirect = 307
        
        /// Http Status Code 308
        case permanentRedirect = 308
        
        // MARK: Status Code 4xx
        
        /// Http Status Code 400
        case badRequest = 400
        
        /// Http Status Code 401
        case unauthorized = 401
        
        /// Http Status Code 402
        case paymentRequired = 402
        
        /// Http Status Code 403
        case forbidden = 403
        
        /// Http Status Code 404
        case notFound = 404
        
        /// Http Status Code 405
        case methodNotAllowed = 405
        
        /// Http Status Code 406
        case notAcceptable = 406
        
        /// Http Status Code 407
        case proxyAuthenticationRequired = 407
        
        /// Http Status Code 408
        case requestTimeout = 408
        
        /// Http Status Code 409
        case conflict = 409
        
        /// Http Status Code 410
        case gone = 410
        
        /// Http Status Code 411
        case lengthRequired = 411
        
        /// Http Status Code 412
        case preconditionFailed = 412
        
        /// Http Status Code 413
        case contentTooLarge = 413
        
        /// Http Status Code 414
        case uriTooLong = 414
        
        /// Http Status Code 415
        case unsupportedMediaType = 415
        
        /// Http Status Code 416
        case rangeNotSatisfiable = 416
        
        /// Http Status Code 417
        case expectationFailed = 417
        
        /// Http Status Code 418
        case iMaTeapot = 418
        
        /// Http Status Code 421
        case misdirectedRequest = 421
        
        /// Http Status Code 422
        case unprocessableContent = 422
        
        /// Http Status Code 423
        case locked = 423
        
        /// Http Status Code 424
        case failedDependency = 424
        
        /// Http Status Code 425
        case tooEarly = 425
        
        /// Http Status Code 426
        case upgradeRequired = 426
        
        /// Http Status Code 428
        case preconditionRequired = 428
        
        /// Http Status Code 429
        case tooManyRequests = 429
        
        /// Http Status Code 431
        case requestHeaderFieldsTooLarge = 431
        
        /// Http Status Code 451
        case unavailableForLegalReasons = 451
        
        // MARK: Status Code 5xx
        
        /// Http Status Code 500
        case internalServerError = 500
        
        /// Http Status Code 501
        case notImplemented = 501
        
        /// Http Status Code 502
        case badGateway = 502
        
        /// Http Status Code 503
        case serviceUnavailable = 503
        
        /// Http Status Code 504
        case gatewayTimeout = 504
        
        /// Http Status Code 505
        case httpVersionNotSupported = 505
        
        /// Http Status Code 506
        case variantAlsoNegotiates = 506
        
        /// Http Status Code 507
        case insufficientStorage = 507
        
        /// Http Status Code 508
        case loopDetected = 508
        
        /// Http Status Code 510
        case notExtended = 510
        
        /// Http Status Code 511
        case networkAuthenticationRequired = 511
    }
}

// MARK: - Extension - HttpStatus.Code

extension HttpStatus.Code {
    
    public var statusCode: Int {
        return self.rawValue
    }
}

extension HttpStatus.Code: CustomStringConvertible {
    
    public var description: String {
        let base = "HTTP Status Code：\(self.statusCode) "
        switch self {
        case .continue:
            return base + "Continue"
        case .switchingProtocols:
            return base + "Switching Protocols"
        case .processing:
            return base + "Processing"
        case .earlyHints:
            return base + "Early Hints"
        case .ok:
            return base + "OK"
        case .created:
            return base + "Created"
        case .accepted:
            return base + "Accepted"
        case .nonAuthoritativeInformation:
            return base + "Non-Authoritative Information"
        case .noContent:
            return base + "No Content"
        case .resetContent:
            return base + "Reset Content"
        case .partialContent:
            return base + "Partial Content"
        case .multiStatus:
            return base + "Multi-Status"
        case .alreadyReported:
            return base + "Already Reported"
        case .imUsed:
            return base + "IM Used"
        case .multipleChoices:
            return base + "Multiple Choices"
        case .movedPermanently:
            return base + "Moved Permanently"
        case .found:
            return base + "Found"
        case .seeOther:
            return base + "See Other"
        case .notModified:
            return base + "Not Modified"
        case .temporaryRedirect:
            return base + "Temporary Redirect"
        case .permanentRedirect:
            return base + "Permanent Redirect"
        case .badRequest:
            return base + "Bad Request"
        case .unauthorized:
            return base + "Unauthorized"
        case .paymentRequired:
            return base + "Payment Required"
        case .forbidden:
            return base + "Forbidden"
        case .notFound:
            return base + "Not Found"
        case .methodNotAllowed:
            return base + "Method Not Allowed"
        case .notAcceptable:
            return base + "Not Acceptable"
        case .proxyAuthenticationRequired:
            return base + "Proxy Authentication Required"
        case .requestTimeout:
            return base + "Request Timeout"
        case .conflict:
            return base + "Conflict"
        case .gone:
            return base + "Gone"
        case .lengthRequired:
            return base + "Length Required"
        case .preconditionFailed:
            return base + "Precondition Failed"
        case .contentTooLarge:
            return base + "Content Too Large"
        case .uriTooLong:
            return base + "URI Too Long"
        case .unsupportedMediaType:
            return base + "Unsupported Media Type"
        case .rangeNotSatisfiable:
            return base + "Range Not Satisfiable"
        case .expectationFailed:
            return base + "Expectation Failed"
        case .iMaTeapot:
            return base + "I'm a teapot"
        case .misdirectedRequest:
            return base + "Misdirected Request"
        case .unprocessableContent:
            return base + "Unprocessable Content"
        case .locked:
            return base + "Locked"
        case .failedDependency:
            return base + "Failed Dependency"
        case .tooEarly:
            return base + "Too Early"
        case .upgradeRequired:
            return base + "Upgrade Required"
        case .preconditionRequired:
            return base + "Precondition Required"
        case .tooManyRequests:
            return base + "Too Many Requests"
        case .requestHeaderFieldsTooLarge:
            return base + "Request Header Fields Too Large"
        case .unavailableForLegalReasons:
            return base + "Unavailable For Legal Reasons"
        case .internalServerError:
            return base + "Internal Server Error"
        case .notImplemented:
            return base + "Not Implemented"
        case .badGateway:
            return base + "Bad Gateway"
        case .serviceUnavailable:
            return base + "Service Unavailable"
        case .gatewayTimeout:
            return base + "Gateway Timeout"
        case .httpVersionNotSupported:
            return base + "HTTP Version Not Supported"
        case .variantAlsoNegotiates:
            return base + "Variant Also Negotiates"
        case .insufficientStorage:
            return base + "Insufficient Storage"
        case .loopDetected:
            return base + "Loop Detected"
        case .notExtended:
            return base + "Not Extended"
        case .networkAuthenticationRequired:
            return base + "Network Authentication Required"
        }
    }
}
