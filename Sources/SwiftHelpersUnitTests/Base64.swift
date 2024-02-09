//
//  Base64.swift
//  SwiftHelpers/SwiftHelpersUnitTests
//
//  Created by Leo Ho on 2024/2/8.
//

import SwiftHelpers
import XCTest

final class Base64: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    private let testOriginalWord = "Hello"
    private let testBase64Word = "SGVsbG8="
    private let testBase64RawWord = "SGVsbG8"
    private let testBase64URLWord = "SGVsbG8="
    private let testBase64URLRawWord = "SGVsbG8"
    
    func testBase64Encoded() {
        let base64 = SwiftHelpers.Base64.base64EncodedString(from: testOriginalWord)
        XCTAssertEqual(base64, testBase64Word)
    }
    
    func testBase64RawEncoded() {
        let base64Raw = SwiftHelpers.Base64.base64RawEncodedString(from: testOriginalWord)
        XCTAssertEqual(base64Raw, testBase64RawWord)
    }
    
    func testBase64URLEncoded() {
        let base64URL = SwiftHelpers.Base64.base64URLEncodedString(from: testOriginalWord)
        XCTAssertEqual(base64URL, testBase64URLWord)
    }
    
    func testBase64RawURLEncoded() {
        let base64URLRaw = SwiftHelpers.Base64.base64URLRawEncodedString(from: testOriginalWord)
        XCTAssertEqual(base64URLRaw, testBase64URLRawWord)
    }
    
    func testBase64Decoded() {
        let base64 = SwiftHelpers.Base64.base64EncodedString(from: testOriginalWord)
        let decoded = try! SwiftHelpers.Base64.base64DecodedString(from: base64)
        XCTAssertEqual(decoded, testOriginalWord)
    }
    
    func testBase64RawDecoded() {
        let base64Raw = SwiftHelpers.Base64.base64RawEncodedString(from: testOriginalWord)
        let decoded = try! SwiftHelpers.Base64.base64RawDecodedString(from: base64Raw)
        XCTAssertEqual(decoded, testOriginalWord)
    }
    
    func testBase64URLDecoded() {
        let base64URL = SwiftHelpers.Base64.base64URLEncodedString(from: testOriginalWord)
        let decoded = try! SwiftHelpers.Base64.base64URLDecodedString(from: base64URL)
        XCTAssertEqual(decoded, testOriginalWord)
    }
    
    func testBase64URLRawDecoded() {
        let base64URLRaw = SwiftHelpers.Base64.base64URLRawEncodedString(from: testOriginalWord)
        let decoded = try! SwiftHelpers.Base64.base64URLRawDecodedString(from: base64URLRaw)
        XCTAssertEqual(decoded, testOriginalWord)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
