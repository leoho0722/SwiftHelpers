//
//  Image+Extensions.swift
//  SwiftHelpers/Extensions
//
//  Created by Leo Ho on 2023/10/2.
//

import SwiftUI

public extension Image {

    /// Use ``SFSymbols`` to initialize `Image`
    init(systemIcon: SFSymbols) {
        self.init(systemName: systemIcon.rawValue)
    }
    
    /// Use ``SFSymbols`` to initialize `Image`
    ///
    ///  This initializer is available in iOS 16.0 or above
    @available(iOS 16.0, *)
    init(systemIcon: SFSymbols, variableValue: Double?) {
        self.init(systemName: systemIcon.rawValue, variableValue: variableValue)
    }
}
