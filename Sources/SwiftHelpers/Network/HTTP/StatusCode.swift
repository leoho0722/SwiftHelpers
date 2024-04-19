//
//  StatusCode.swift
//  SwiftHelpers/Network
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

public extension HTTP {
    
    /// Define HTTP StatusCode of HTTP Response
    enum StatusCode: Int, LocalizedError, CustomNSError {
        
        // MARK: Initializer
        
        public init?(rawValue: Int) {
            switch rawValue {
            case StatusCode.continue.rawValue: self = .continue
            case StatusCode.switchingProtocols.rawValue: self = .switchingProtocols
            case StatusCode.processing.rawValue: self = .processing
            case StatusCode.earlyHints.rawValue: self = .earlyHints
            case StatusCode.ok.rawValue: self = .ok
            case StatusCode.created.rawValue: self = .created
            case StatusCode.accepted.rawValue: self = .accepted
            case StatusCode.nonAuthoritativeInformation.rawValue: self = .nonAuthoritativeInformation
            case StatusCode.noContent.rawValue: self = .noContent
            case StatusCode.resetContent.rawValue: self = .resetContent
            case StatusCode.partialContent.rawValue: self = .partialContent
            case StatusCode.multiStatus.rawValue: self = .multiStatus
            case StatusCode.alreadyReported.rawValue: self = .alreadyReported
            case StatusCode.imUsed.rawValue: self = .imUsed
            case StatusCode.multipleChoices.rawValue: self = .multipleChoices
            case StatusCode.movedPermanently.rawValue: self = .movedPermanently
            case StatusCode.found.rawValue: self = .found
            case StatusCode.seeOther.rawValue: self = .seeOther
            case StatusCode.notModified.rawValue: self = .notModified
            case StatusCode.temporaryRedirect.rawValue: self = .temporaryRedirect
            case StatusCode.permanentRedirect.rawValue: self = .permanentRedirect
            case StatusCode.badRequest.rawValue: self = .badRequest
            case StatusCode.unauthorized.rawValue: self = .unauthorized
            case StatusCode.paymentRequired.rawValue: self = .paymentRequired
            case StatusCode.forbidden.rawValue: self = .forbidden
            case StatusCode.notFound.rawValue: self = .notFound
            case StatusCode.methodNotAllowed.rawValue: self = .methodNotAllowed
            case StatusCode.notAcceptable.rawValue: self = .notAcceptable
            case StatusCode.proxyAuthenticationRequired.rawValue: self = .proxyAuthenticationRequired
            case StatusCode.requestTimeout.rawValue: self = .requestTimeout
            case StatusCode.conflict.rawValue: self = .conflict
            case StatusCode.gone.rawValue: self = .gone
            case StatusCode.lengthRequired.rawValue: self = .lengthRequired
            case StatusCode.preconditionFailed.rawValue: self = .preconditionFailed
            case StatusCode.contentTooLarge.rawValue: self = .contentTooLarge
            case StatusCode.uriTooLong.rawValue: self = .uriTooLong
            case StatusCode.unsupportedMediaType.rawValue: self = .unsupportedMediaType
            case StatusCode.rangeNotSatisfiable.rawValue: self = .rangeNotSatisfiable
            case StatusCode.expectationFailed.rawValue: self = .expectationFailed
            case StatusCode.iMaTeapot.rawValue: self = .iMaTeapot
            case StatusCode.misdirectedRequest.rawValue: self = .misdirectedRequest
            case StatusCode.unprocessableContent.rawValue: self = .unprocessableContent
            case StatusCode.locked.rawValue: self = .locked
            case StatusCode.failedDependency.rawValue: self = .failedDependency
            case StatusCode.tooEarly.rawValue: self = .tooEarly
            case StatusCode.upgradeRequired.rawValue: self = .upgradeRequired
            case StatusCode.preconditionRequired.rawValue: self = .preconditionRequired
            case StatusCode.tooManyRequests.rawValue: self = .tooManyRequests
            case StatusCode.requestHeaderFieldsTooLarge.rawValue: self = .requestHeaderFieldsTooLarge
            case StatusCode.unavailableForLegalReasons.rawValue: self = .unavailableForLegalReasons
            case StatusCode.internalServerError.rawValue: self = .internalServerError
            case StatusCode.notImplemented.rawValue: self = .notImplemented
            case StatusCode.badGateway.rawValue: self = .badGateway
            case StatusCode.serviceUnavailable.rawValue: self = .serviceUnavailable
            case StatusCode.gatewayTimeout.rawValue: self = .gatewayTimeout
            case StatusCode.httpVersionNotSupported.rawValue: self = .httpVersionNotSupported
            case StatusCode.variantAlsoNegotiates.rawValue: self = .variantAlsoNegotiates
            case StatusCode.insufficientStorage.rawValue: self = .insufficientStorage
            case StatusCode.loopDetected.rawValue: self = .loopDetected
            case StatusCode.notExtended.rawValue: self = .notExtended
            case StatusCode.networkAuthenticationRequired.rawValue: self = .networkAuthenticationRequired
            default: self = .unknown
            }
        }
        
        // MARK: Unknown Status Code
        
        /// Unknown HTTP Status Code
        case unknown = -1
        
        // MARK: Status Code 1xx
        
        /// HTTP Status Code 100
        case `continue` = 100
        
        /// HTTP Status Code 101
        case switchingProtocols = 101
        
        /// HTTP Status Code 102
        case processing = 102
        
        /// HTTP Status Code 103
        case earlyHints = 103
        
        // MARK: Status Code 2xx
        
        /// HTTP Status Code 200
        case ok = 200
        
        /// HTTP Status Code 201
        case created = 201
        
        /// HTTP Status Code 202
        case accepted = 202
        
        /// HTTP Status Code 203
        case nonAuthoritativeInformation = 203
        
        /// HTTP Status Code 204
        case noContent = 204
        
        /// HTTP Status Code 205
        case resetContent = 205
        
        /// HTTP Status Code 206
        case partialContent = 206
        
        /// HTTP Status Code 207
        case multiStatus = 207
        
        /// HTTP Status Code 208
        case alreadyReported = 208
        
        /// HTTP Status Code 226
        case imUsed = 226
        
        // MARK: Status Code 3xx
        
        /// HTTP Status Code 300
        case multipleChoices = 300
        
        /// HTTP Status Code 301
        case movedPermanently = 301
        
        /// HTTP Status Code 302
        case found = 302
        
        /// HTTP Status Code 303
        case seeOther = 303
        
        /// HTTP Status Code 304
        case notModified = 304
        
        /// HTTP Status Code 307
        case temporaryRedirect = 307
        
        /// HTTP Status Code 308
        case permanentRedirect = 308
        
        // MARK: Status Code 4xx
        
        /// HTTP Status Code 400
        case badRequest = 400
        
        /// HTTP Status Code 401
        case unauthorized = 401
        
        /// HTTP Status Code 402
        case paymentRequired = 402
        
        /// HTTP Status Code 403
        case forbidden = 403
        
        /// HTTP Status Code 404
        case notFound = 404
        
        /// HTTP Status Code 405
        case methodNotAllowed = 405
        
        /// HTTP Status Code 406
        case notAcceptable = 406
        
        /// HTTP Status Code 407
        case proxyAuthenticationRequired = 407
        
        /// HTTP Status Code 408
        case requestTimeout = 408
        
        /// HTTP Status Code 409
        case conflict = 409
        
        /// HTTP Status Code 410
        case gone = 410
        
        /// HTTP Status Code 411
        case lengthRequired = 411
        
        /// HTTP Status Code 412
        case preconditionFailed = 412
        
        /// HTTP Status Code 413
        case contentTooLarge = 413
        
        /// HTTP Status Code 414
        case uriTooLong = 414
        
        /// HTTP Status Code 415
        case unsupportedMediaType = 415
        
        /// HTTP Status Code 416
        case rangeNotSatisfiable = 416
        
        /// HTTP Status Code 417
        case expectationFailed = 417
        
        /// HTTP Status Code 418
        case iMaTeapot = 418
        
        /// HTTP Status Code 421
        case misdirectedRequest = 421
        
        /// HTTP Status Code 422
        case unprocessableContent = 422
        
        /// HTTP Status Code 423
        case locked = 423
        
        /// HTTP Status Code 424
        case failedDependency = 424
        
        /// HTTP Status Code 425
        case tooEarly = 425
        
        /// HTTP Status Code 426
        case upgradeRequired = 426
        
        /// HTTP Status Code 428
        case preconditionRequired = 428
        
        /// HTTP Status Code 429
        case tooManyRequests = 429
        
        /// HTTP Status Code 431
        case requestHeaderFieldsTooLarge = 431
        
        /// HTTP Status Code 451
        case unavailableForLegalReasons = 451
        
        // MARK: Status Code 5xx
        
        /// HTTP Status Code 500
        case internalServerError = 500
        
        /// HTTP Status Code 501
        case notImplemented = 501
        
        /// HTTP Status Code 502
        case badGateway = 502
        
        /// HTTP Status Code 503
        case serviceUnavailable = 503
        
        /// HTTP Status Code 504
        case gatewayTimeout = 504
        
        /// HTTP Status Code 505
        case httpVersionNotSupported = 505
        
        /// HTTP Status Code 506
        case variantAlsoNegotiates = 506
        
        /// HTTP Status Code 507
        case insufficientStorage = 507
        
        /// HTTP Status Code 508
        case loopDetected = 508
        
        /// HTTP Status Code 510
        case notExtended = 510
        
        /// HTTP Status Code 511
        case networkAuthenticationRequired = 511
        
        // MARK: - Implementation LocalizedError
        
        public var errorDescription: String {
            let base = "[HTTP Status Code] \(self.rawValue) "
            switch self {
            case .unknown:
                return base + "Unknown Status Code"
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
        
        // MARK: - Implementation CustomNSError
        
        public var errorCode: Int {
            return self.rawValue
        }
        
        public var errorUserInfo: [String : Any] {
            return ["message" : self.errorDescription]
        }
        
        public static var errorDomain: String {
            return "HTTPStatus"
        }
    }
}
