//
//  HTTP.swift
//  SwiftHelpers/SwiftHelpersUnitTests
//
//  Created by Leo Ho on 2023/11/28.
//

import SwiftHelpers
import XCTest

final class HTTP: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testHttpStatus() throws {
        let statusCode = 200
        let status = SwiftHelpers.HTTP.HTTPStatus.ok
        
        let testStatus = SwiftHelpers.HTTP.HTTPStatus(rawValue: statusCode)
        
        XCTAssertEqual(status, testStatus, "status 與 testStatus 一致")
        XCTAssertEqual(status.errorDescription, testStatus?.errorDescription)
        
        let unknownStatusCode = -1
        let testUnknownStatus = SwiftHelpers.HTTP.HTTPStatus.unknown
        
        XCTAssertEqual(
            unknownStatusCode,
            testUnknownStatus.rawValue,
            "unknownStatusCode 與 testUnknownStatus.rawValue 一致"
        )
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
