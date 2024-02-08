//
//  Label+Extensions.swift
//  SwiftHelpers/Extensions/SwiftUI
//
//  Created by Leo Ho on 2023/10/2.
//

import SwiftUI

public extension Label where Title == Text, Icon == Image {
    
    /// Use ``SFSymbols`` and `LocalizedStringKey` to initialize `Label`
    @available(
        *,
         deprecated,
         renamed: "init(_:symbols:)",
         message: "Deprecated since version 0.0.9, renamed to init(symbols:)"
    )
    init(_ titleKey: LocalizedStringKey, systemIcon name: SFSymbols) {
        self.init(titleKey, systemImage: name.rawValue)
    }
    
    /// Use ``SFSymbols`` and `String` to initialize `Label`
    @available(
        *,
         deprecated,
         renamed: "init(_:symbols:)",
         message: "Deprecated since version 0.0.9, renamed to init(symbols:)"
    )
    init<S>(_ title: S, systemIcon name: SFSymbols) where S : StringProtocol {
        self.init(title, systemImage: name.rawValue)
    }
    
    /// Use ``SFSymbols`` and `LocalizedStringKey` to initialize `Label`
    init(_ titleKey: LocalizedStringKey, symbols name: SFSymbols) {
        self.init(titleKey, systemImage: name.rawValue)
    }
    
    /// Use ``SFSymbols`` and `String` to initialize `Label`
    init<S>(_ title: S, symbols name: SFSymbols) where S : StringProtocol {
        self.init(title, systemImage: name.rawValue)
    }
}
