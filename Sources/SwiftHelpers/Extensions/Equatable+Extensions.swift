//
//  Equatable+Extensions.swift
//  SwiftHelpers/Extensions
//
//  Created by Leo Ho on 2023/12/6.
//

import Foundation

public extension Equatable {
    
    /// Returns a Boolean value indicating whether this instance is equal to the given value.
    ///
    /// This method serves as the basis for the equal-to operator (==) for Equatable values. For example:
    /// ```swift
    /// let a = 123
    /// let b = 123
    /// print(a == b) // true
    /// print(a.isEqual(to: b)) // true
    ///
    /// let c = "123"
    /// let d = "123"
    /// print(c == d) // true
    /// print(c.isEqual(to: d)) // true
    /// ```
    ///
    /// - Parameters:
    ///   - other: The value to compare with this value.
    /// - Returns: true if other has the same value as this instance; otherwise, false.
    @inlinable func isEqual(to other: Any?) -> Bool {
        return self == other as! Self
    }
}
