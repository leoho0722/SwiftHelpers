//
//  Image+Extensions.swift
//  SwiftHelpers/LHSFSymbolsHelpers
//
//  Created by Leo Ho on 2023/10/2.
//

import SwiftUI

public extension Image {
    
    init(systemIcon: SFSymbols) {
        self.init(systemName: systemIcon.rawValue)
    }
    
    @available(iOS 16.0, *)
    init(systemIcon: SFSymbols, variableValue: Double?) {
        self.init(systemName: systemIcon.rawValue, variableValue: variableValue)
    }
}
