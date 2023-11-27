//
//  JSON.swift
//  
//
//  Created by Leo Ho on 2023/11/27.
//

import XCTest

import SwiftHelpers

final class JSON: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testJsonEncode() throws {
        let sample = JsonEncodeSample(text: "123")
        let sampleJsonObject = try sample.toDictionary() as! Dictionary<String, String>
        
        let testSampleJsonData = try SwiftHelpers.JSON.toJsonData(data: sample)
        guard let testSampleJsonObject = try JSONSerialization.jsonObject(with: testSampleJsonData,
                                                                          options: .fragmentsAllowed) as? Dictionary<String, String> else {
            throw SwiftHelpers.JSON.JSONEncodeError.encodableToDictFailed
        }
        
        XCTAssertEqual(sampleJsonObject, testSampleJsonObject, "sampleJsonObject 與 testSampleJsonObject 一致")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}

fileprivate extension JSON {
    
    struct JsonEncodeSample: Codable {
        
        let text: String
    }
}
