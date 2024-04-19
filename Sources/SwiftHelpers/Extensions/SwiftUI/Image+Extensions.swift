//
//  Image+Extensions.swift
//  SwiftHelpers/Extensions/SwiftUI
//
//  Created by Leo Ho on 2023/10/2.
//

import SwiftUI

public extension Image {
    
    /// Use ``SFSymbols`` to initialize `Image`
    init(symbols: SFSymbols) {
        self.init(systemName: symbols.rawValue)
    }
    
    /// Use ``SFSymbols`` to initialize `Image`
    ///
    ///  This initializer is available in iOS 16.0 and macOS 13.0 or above
    @available(iOS 16.0, macOS 13.0, *)
    init(symbols: SFSymbols, variableValue: Double?) {
        self.init(systemName: symbols.rawValue, variableValue: variableValue)
    }
}

// MARK: - Deprecated

public extension Image {
    
    
}
