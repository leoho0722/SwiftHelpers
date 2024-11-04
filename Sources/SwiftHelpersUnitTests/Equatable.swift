//
//  Equatable.swift
//  SwiftHelpers/SwiftHelpersUnitTests
//
//  Created by Leo Ho on 2023/12/6.
//

import SwiftHelpers
import Testing

@Suite("EquatableTests")
struct EquatableTests {
    
    @Test
    func isEqualTo() async throws {
        let a = "123"
        let b = "123"
        #expect(a.isEqual(to: b) == true)
        
        let c = 123
        let d = 123
        #expect(c.isEqual(to: d) == true)
        
        let e = "123"
        let f = "456"
        #expect(e.isEqual(to: f) == false)
    }
}
