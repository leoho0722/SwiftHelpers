//
//  JSON.swift
//  SwiftHelpers/SwiftHelpersUnitTests
//
//  Created by Leo Ho on 2023/11/27.
//

import SwiftHelpers
import Foundation
import Testing

@Suite("JSONTests")
struct JSONTests {
    
    struct JsonEncodeSample: Codable {
        
        let text: String
    }
    
    @Test
    func jsonEncode() async throws {
        let sample = JsonEncodeSample(text: "123")
        let sampleJsonObject = try sample.toDictionary() as! Dictionary<String, String>
        
        let testSampleJsonData = try SwiftHelpers.JSON.toJsonData(data: sample)
        guard let testSampleJsonObject = try JSONSerialization.jsonObject(
            with: testSampleJsonData,
            options: .fragmentsAllowed
        ) as? Dictionary<String, String> else {
            throw SwiftHelpers.JSON.JSONEncodeError.encodableToDictFailed
        }
        
        #expect(sampleJsonObject == testSampleJsonObject)
    }
}
