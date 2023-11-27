//
//  Status.swift
//  SwiftHelpers/Network
//
//  Created by Leo Ho on 2023/6/13.
//

import Foundation

public extension HTTP {
    
    /// Define HTTP Status of HTTP Response
    enum HTTPStatus: Int, LocalizedError, CustomNSError {
        
        // MARK: Initializer
        
        public init?(rawValue: Int) {
            switch rawValue {
            case HTTPStatus.continue.rawValue: self = .continue
            case HTTPStatus.switchingProtocols.rawValue: self = .switchingProtocols
            case HTTPStatus.processing.rawValue: self = .processing
            case HTTPStatus.earlyHints.rawValue: self = .earlyHints
            case HTTPStatus.ok.rawValue: self = .ok
            case HTTPStatus.created.rawValue: self = .created
            case HTTPStatus.accepted.rawValue: self = .accepted
            case HTTPStatus.nonAuthoritativeInformation.rawValue: self = .nonAuthoritativeInformation
            case HTTPStatus.noContent.rawValue: self = .noContent
            case HTTPStatus.resetContent.rawValue: self = .resetContent
            case HTTPStatus.partialContent.rawValue: self = .partialContent
            case HTTPStatus.multiStatus.rawValue: self = .multiStatus
            case HTTPStatus.alreadyReported.rawValue: self = .alreadyReported
            case HTTPStatus.imUsed.rawValue: self = .imUsed
            case HTTPStatus.multipleChoices.rawValue: self = .multipleChoices
            case HTTPStatus.movedPermanently.rawValue: self = .movedPermanently
            case HTTPStatus.found.rawValue: self = .found
            case HTTPStatus.seeOther.rawValue: self = .seeOther
            case HTTPStatus.notModified.rawValue: self = .notModified
            case HTTPStatus.temporaryRedirect.rawValue: self = .temporaryRedirect
            case HTTPStatus.permanentRedirect.rawValue: self = .permanentRedirect
            case HTTPStatus.badRequest.rawValue: self = .badRequest
            case HTTPStatus.unauthorized.rawValue: self = .unauthorized
            case HTTPStatus.paymentRequired.rawValue: self = .paymentRequired
            case HTTPStatus.forbidden.rawValue: self = .forbidden
            case HTTPStatus.notFound.rawValue: self = .notFound
            case HTTPStatus.methodNotAllowed.rawValue: self = .methodNotAllowed
            case HTTPStatus.notAcceptable.rawValue: self = .notAcceptable
            case HTTPStatus.proxyAuthenticationRequired.rawValue: self = .proxyAuthenticationRequired
            case HTTPStatus.requestTimeout.rawValue: self = .requestTimeout
            case HTTPStatus.conflict.rawValue: self = .conflict
            case HTTPStatus.gone.rawValue: self = .gone
            case HTTPStatus.lengthRequired.rawValue: self = .lengthRequired
            case HTTPStatus.preconditionFailed.rawValue: self = .preconditionFailed
            case HTTPStatus.contentTooLarge.rawValue: self = .contentTooLarge
            case HTTPStatus.uriTooLong.rawValue: self = .uriTooLong
            case HTTPStatus.unsupportedMediaType.rawValue: self = .unsupportedMediaType
            case HTTPStatus.rangeNotSatisfiable.rawValue: self = .rangeNotSatisfiable
            case HTTPStatus.expectationFailed.rawValue: self = .expectationFailed
            case HTTPStatus.iMaTeapot.rawValue: self = .iMaTeapot
            case HTTPStatus.misdirectedRequest.rawValue: self = .misdirectedRequest
            case HTTPStatus.unprocessableContent.rawValue: self = .unprocessableContent
            case HTTPStatus.locked.rawValue: self = .locked
            case HTTPStatus.failedDependency.rawValue: self = .failedDependency
            case HTTPStatus.tooEarly.rawValue: self = .tooEarly
            case HTTPStatus.upgradeRequired.rawValue: self = .upgradeRequired
            case HTTPStatus.preconditionRequired.rawValue: self = .preconditionRequired
            case HTTPStatus.tooManyRequests.rawValue: self = .tooManyRequests
            case HTTPStatus.requestHeaderFieldsTooLarge.rawValue: self = .requestHeaderFieldsTooLarge
            case HTTPStatus.unavailableForLegalReasons.rawValue: self = .unavailableForLegalReasons
            case HTTPStatus.internalServerError.rawValue: self = .internalServerError
            case HTTPStatus.notImplemented.rawValue: self = .notImplemented
            case HTTPStatus.badGateway.rawValue: self = .badGateway
            case HTTPStatus.serviceUnavailable.rawValue: self = .serviceUnavailable
            case HTTPStatus.gatewayTimeout.rawValue: self = .gatewayTimeout
            case HTTPStatus.httpVersionNotSupported.rawValue: self = .httpVersionNotSupported
            case HTTPStatus.variantAlsoNegotiates.rawValue: self = .variantAlsoNegotiates
            case HTTPStatus.insufficientStorage.rawValue: self = .insufficientStorage
            case HTTPStatus.loopDetected.rawValue: self = .loopDetected
            case HTTPStatus.notExtended.rawValue: self = .notExtended
            case HTTPStatus.networkAuthenticationRequired.rawValue: self = .networkAuthenticationRequired
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
            let base = "HTTP Status Code: \(self.rawValue) "
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
