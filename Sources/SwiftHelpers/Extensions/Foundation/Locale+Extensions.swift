//
//  Locale+Extensions.swift
//  SwiftHelpers/Extensions/Foundation
//
//  Created by Leo Ho on 2023/12/27.
//

import Foundation

public extension Locale {
    
    /// User preferred display language
    static var preferredLocale: Self {
        return Locale(identifier: preferredLocaleToString())
    }
    
    /// Display language conversion string for User preferred
    static func preferredLocaleToString() -> String {
        return String(self.preferredLanguages[0].prefix(2))
    }
}
