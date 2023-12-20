//
//  NSImage+Extensions.swift
//  SwiftHelpers/Extensions/AppKit
//
//  Created by Leo Ho on 2023/12/20.
//

#if canImport(AppKit)
import AppKit

public extension NSImage {
    
    /// Use ``SFSymbols`` to initialize `NSImage`
    convenience init?(symbols: SFSymbols, accessibilityDescription: String? = nil) {
        self.init(systemSymbolName: symbols.rawValue,
                  accessibilityDescription: accessibilityDescription)
    }
    
    /// Use ``SFSymbols`` to initialize `NSImage`
    ///
    ///  This initializer is available in macOS 13.0 or above
    @available(macOS 13.0, *)
    convenience init?(symbols: SFSymbols, variableValue: Double, accessibilityDescription: String? = nil) {
        self.init(systemSymbolName: symbols.rawValue,
                  variableValue: variableValue,
                  accessibilityDescription: accessibilityDescription)
    }
}
#endif
