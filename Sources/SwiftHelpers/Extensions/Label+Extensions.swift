//
//  Label+Extensions.swift
//  SwiftHelpers/Extensions
//
//  Created by Leo Ho on 2023/10/2.
//

import SwiftUI

public extension Label where Title == Text, Icon == Image {
    
    init(_ titleKey: LocalizedStringKey, systemIcon name: SFSymbols) {
        self.init(titleKey, systemImage: name.rawValue)
    }
    
    init<S>(_ title: S, systemIcon name: SFSymbols) where S : StringProtocol {
        self.init(title, systemImage: name.rawValue)
    }
}
