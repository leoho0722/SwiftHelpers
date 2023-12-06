//
//  Equatable.swift
//  
//
//  Created by Leo Ho on 2023/12/6.
//

import XCTest

import SwiftHelpers

final class Equatable: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsEqual() throws {
        let a = "123"
        let b = "123"
        XCTAssertTrue(a.isEqual(to: b), "a isEqual b")
        
        let c = 123
        let d = 123
        XCTAssertTrue(c.isEqual(to: d), "c isEqual d")
    }
}
