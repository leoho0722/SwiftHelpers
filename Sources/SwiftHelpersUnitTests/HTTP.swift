//
//  HTTP.swift
//  SwiftHelpers/SwiftHelpersUnitTests
//
//  Created by Leo Ho on 2023/11/28.
//

import SwiftHelpers
import Testing

@Suite("HTTPStatusCodeTests")
struct HTTPStatusCodeTests {
    
    @Test
    func httpStatus() async throws {
        let statusCode = 200
        let status = SwiftHelpers.HTTP.StatusCode.ok
        
        let testStatus = SwiftHelpers.HTTP.StatusCode(rawValue: statusCode)
        
        #expect(status == testStatus)
        #expect(status.errorDescription == testStatus?.errorDescription)
        
        let unknownStatusCode = -1
        let testUnknownStatus = SwiftHelpers.HTTP.StatusCode.unknown
        
        #expect(unknownStatusCode == testUnknownStatus.rawValue,
                Comment("unknownStatusCode 與 testUnknownStatus.rawValue 一致"))
    }
}
