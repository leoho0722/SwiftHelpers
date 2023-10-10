//
//  Status.swift
//  SwiftHelpers/Network
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

/// 定義發出 HTTP Request 後，收到 Response 的 HTTP Status
public extension HTTP {
    
    enum HTTPStatus: Error, CustomStringConvertible {
        
        // MARK: Status Code 1xx
        
        /// HTTP Status Code 100
        case `continue`
        
        /// HTTP Status Code 101
        case switchingProtocols
        
        /// HTTP Status Code 102
        case processing
        
        /// HTTP Status Code 103
        case earlyHints
        
        // MARK: Status Code 2xx
        
        /// HTTP Status Code 200
        case ok
        
        /// HTTP Status Code 201
        case created
        
        /// HTTP Status Code 202
        case accepted
        
        /// HTTP Status Code 203
        case nonAuthoritativeInformation
        
        /// HTTP Status Code 204
        case noContent
        
        /// HTTP Status Code 205
        case resetContent
        
        /// HTTP Status Code 206
        case partialContent
        
        /// HTTP Status Code 207
        case multiStatus
        
        /// HTTP Status Code 208
        case alreadyReported
        
        /// HTTP Status Code 226
        case imUsed
        
        // MARK: Status Code 3xx
        
        /// HTTP Status Code 300
        case multipleChoices
        
        /// HTTP Status Code 301
        case movedPermanently
        
        /// HTTP Status Code 302
        case found
        
        /// HTTP Status Code 303
        case seeOther
        
        /// HTTP Status Code 304
        case notModified
        
        /// HTTP Status Code 307
        case temporaryRedirect
        
        /// HTTP Status Code 308
        case permanentRedirect
        
        // MARK: Status Code 4xx
        
        /// HTTP Status Code 400
        case badRequest
        
        /// HTTP Status Code 401
        case unauthorized
        
        /// HTTP Status Code 402
        case paymentRequired
        
        /// HTTP Status Code 403
        case forbidden
        
        /// HTTP Status Code 404
        case notFound
        
        /// HTTP Status Code 405
        case methodNotAllowed
        
        /// HTTP Status Code 406
        case notAcceptable
        
        /// HTTP Status Code 407
        case proxyAuthenticationRequired
        
        /// HTTP Status Code 408
        case requestTimeout
        
        /// HTTP Status Code 409
        case conflict
        
        /// HTTP Status Code 410
        case gone
        
        /// HTTP Status Code 411
        case lengthRequired
        
        /// HTTP Status Code 412
        case preconditionFailed
        
        /// HTTP Status Code 413
        case contentTooLarge
        
        /// HTTP Status Code 414
        case uriTooLong
        
        /// HTTP Status Code 415
        case unsupportedMediaType
        
        /// HTTP Status Code 416
        case rangeNotSatisfiable
        
        /// HTTP Status Code 417
        case expectationFailed
        
        /// HTTP Status Code 418
        case iMaTeapot
        
        /// HTTP Status Code 421
        case misdirectedRequest
        
        /// HTTP Status Code 422
        case unprocessableContent
        
        /// HTTP Status Code 423
        case locked
        
        /// HTTP Status Code 424
        case failedDependency
        
        /// HTTP Status Code 425
        case tooEarly
        
        /// HTTP Status Code 426
        case upgradeRequired
        
        /// HTTP Status Code 428
        case preconditionRequired
        
        /// HTTP Status Code 429
        case tooManyRequests
        
        /// HTTP Status Code 431
        case requestHeaderFieldsTooLarge
        
        /// HTTP Status Code 451
        case unavailableForLegalReasons
        
        // MARK: Status Code 5xx
        
        /// HTTP Status Code 500
        case internalServerError
        
        /// HTTP Status Code 501
        case notImplemented
        
        /// HTTP Status Code 502
        case badGateway
        
        /// HTTP Status Code 503
        case serviceUnavailable
        
        /// HTTP Status Code 504
        case gatewayTimeout
        
        /// HTTP Status Code 505
        case httpVersionNotSupported
        
        /// HTTP Status Code 506
        case variantAlsoNegotiates
        
        /// HTTP Status Code 507
        case insufficientStorage
        
        /// HTTP Status Code 508
        case loopDetected
        
        /// HTTP Status Code 510
        case notExtended
        
        /// HTTP Status Code 511
        case networkAuthenticationRequired
        
        public var statusCode: Int {
            switch self {
            case .continue: 100
            case .switchingProtocols: 101
            case .processing: 102
            case .earlyHints: 103
            case .ok: 200
            case .created: 201
            case .accepted: 202
            case .nonAuthoritativeInformation: 203
            case .noContent: 204
            case .resetContent: 205
            case .partialContent: 206
            case .multiStatus: 207
            case .alreadyReported: 208
            case .imUsed: 226
            case .multipleChoices: 300
            case .movedPermanently: 301
            case .found: 302
            case .seeOther: 303
            case .notModified: 304
            case .temporaryRedirect: 307
            case .permanentRedirect: 308
            case .badRequest: 400
            case .unauthorized: 401
            case .paymentRequired: 402
            case .forbidden: 403
            case .notFound: 404
            case .methodNotAllowed: 405
            case .notAcceptable: 406
            case .proxyAuthenticationRequired: 407
            case .requestTimeout: 408
            case .conflict: 409
            case .gone: 410
            case .lengthRequired: 411
            case .preconditionFailed: 412
            case .contentTooLarge: 413
            case .uriTooLong: 414
            case .unsupportedMediaType: 415
            case .rangeNotSatisfiable: 416
            case .expectationFailed: 417
            case .iMaTeapot: 418
            case .misdirectedRequest: 421
            case .unprocessableContent: 422
            case .locked: 423
            case .failedDependency: 424
            case .tooEarly: 425
            case .upgradeRequired: 426
            case .preconditionRequired: 428
            case .tooManyRequests: 429
            case .requestHeaderFieldsTooLarge: 431
            case .unavailableForLegalReasons: 451
            case .internalServerError: 500
            case .notImplemented: 501
            case .badGateway: 502
            case .serviceUnavailable: 503
            case .gatewayTimeout: 504
            case .httpVersionNotSupported: 505
            case .variantAlsoNegotiates: 506
            case .insufficientStorage: 507
            case .loopDetected: 508
            case .notExtended: 510
            case .networkAuthenticationRequired: 511
            }
        }
        
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
}
