//
//  Base64.swift
//  SwiftHelpers/SwiftHelpersUnitTests
//
//  Created by Leo Ho on 2024/2/8.
//

import SwiftHelpers
import Testing

extension Tag {
    
    @Tag static var encode: Self
    
    @Tag static var decode: Self
}

@Suite("Base64Tests")
struct Base64Tests {
    
    enum TestingAnswer {
        case original, base64, base64Raw, base64URL, base64URLRaw
        
        var answer: String {
            switch self {
            case .original:
                return "Hello"
            case .base64:
                return "SGVsbG8="
            case .base64URL:
                return "SGVsbG8="
            case .base64Raw:
                return "SGVsbG8"
            case .base64URLRaw:
                return "SGVsbG8"
            }
        }
    }
    
    @Test(.tags(.encode))
    func base64Encoded() async throws {
        let base64 = SwiftHelpers.Base64.base64EncodedString(from: TestingAnswer.original.answer)
        
        #expect(base64 == TestingAnswer.base64.answer)
    }
    
    @Test(.tags(.encode))
    func base64RawEncoded() async throws {
        let base64Raw = SwiftHelpers.Base64.base64RawEncodedString(from: TestingAnswer.original.answer)
        
        #expect(base64Raw == TestingAnswer.base64Raw.answer)
    }

    @Test(.tags(.encode))
    func base64URLEncoded() async throws {
        let base64URL = SwiftHelpers.Base64.base64URLEncodedString(from: TestingAnswer.original.answer)
        
        #expect(base64URL == TestingAnswer.base64URL.answer)
    }
    
    @Test(.tags(.encode))
    func base64URLRawEncoded() async throws {
        let base64URLRaw = SwiftHelpers.Base64.base64URLRawEncodedString(from: TestingAnswer.original.answer)
        
        #expect(base64URLRaw == TestingAnswer.base64URLRaw.answer)
    }

    @Test(.tags(.decode))
    func base64Decoded() async throws {
        let base64 = SwiftHelpers.Base64.base64EncodedString(from: TestingAnswer.original.answer)
        let decoded = try SwiftHelpers.Base64.base64DecodedString(from: base64)
        
        #expect(decoded == TestingAnswer.original.answer)
    }
    
    @Test(.tags(.decode))
    func base64RawDecoded() async throws {
        let base64Raw = SwiftHelpers.Base64.base64RawEncodedString(from: TestingAnswer.original.answer)
        let decoded = try SwiftHelpers.Base64.base64RawDecodedString(from: base64Raw)
        
        #expect(decoded == TestingAnswer.original.answer)
    }

    @Test(.tags(.decode))
    func base64URLDecoded() async throws {
        let base64URL = SwiftHelpers.Base64.base64URLEncodedString(from: TestingAnswer.original.answer)
        let decoded = try SwiftHelpers.Base64.base64URLDecodedString(from: base64URL)
        
        #expect(decoded == TestingAnswer.original.answer)
    }

    @Test(.tags(.decode))
    func base64URLRawDecoded() async throws {
        let base64URLRaw = SwiftHelpers.Base64.base64URLRawEncodedString(from: TestingAnswer.original.answer)
        let decoded = try SwiftHelpers.Base64.base64URLRawDecodedString(from: base64URLRaw)
        
        #expect(decoded == TestingAnswer.original.answer)
    }
}
