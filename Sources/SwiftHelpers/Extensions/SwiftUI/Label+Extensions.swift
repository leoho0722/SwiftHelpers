//
//  Label+Extensions.swift
//  SwiftHelpers/Extensions/SwiftUI
//
//  Created by Leo Ho on 2023/10/2.
//

import SwiftUI

public extension Label where Title == Text, Icon == Image {
    
    /// Use ``SFSymbols`` and `LocalizedStringKey` to initialize `Label`
    init(_ titleKey: LocalizedStringKey, symbols name: SFSymbols) {
        self.init(titleKey, systemImage: name.rawValue)
    }
    
    /// Use ``SFSymbols`` and `String` to initialize `Label`
    init<S>(_ title: S, symbols name: SFSymbols) where S : StringProtocol {
        self.init(title, systemImage: name.rawValue)
    }
}

// MARK: - Deprecated

public extension Label where Title == Text, Icon == Image {
    
    
}
