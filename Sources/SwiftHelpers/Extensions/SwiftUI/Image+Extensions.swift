//
//  Image+Extensions.swift
//  SwiftHelpers/Extensions/SwiftUI
//
//  Created by Leo Ho on 2023/10/2.
//

import SwiftUI

public extension Image {
    
    /// Use ``SFSymbols`` to initialize `Image`
    @available(*, deprecated, renamed: "init(symbols:)", message: "Deprecated since version 0.0.9, renamed to init(symbols:)")
    init(systemIcon: SFSymbols) {
        self.init(systemName: systemIcon.rawValue)
    }
    
    /// Use ``SFSymbols`` to initialize `Image`
    ///
    ///  This initializer is available in iOS 16.0 and macOS 13.0 or above
    @available(iOS 16.0, macOS 13.0, *)
    @available(*, deprecated, renamed: "init(symbols:variableValue:)", message: "Deprecated since version 0.0.9, renamed to init(symbols:variableValue:)")
    init(systemIcon: SFSymbols, variableValue: Double?) {
        self.init(systemName: systemIcon.rawValue, variableValue: variableValue)
    }
    
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
