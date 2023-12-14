//
//  UIImage+Extensions.swift
//  SwiftHelpers/Extensions/UIKit
//
//  Created by Leo Ho on 2023/10/2.
//

import UIKit

public extension UIImage {
    
    /// Use ``SFSymbols`` to initialize `UIImage`
    @available(*, deprecated, renamed: "init(symbols:)", message: "Deprecated since version 0.0.9, renamed to init(symbols:)")
    convenience init?(systemIcon: SFSymbols) {
        self.init(systemName: systemIcon.rawValue)
    }
    
    /// Use ``SFSymbols`` to initialize `UIImage`
    convenience init?(symbols: SFSymbols) {
        self.init(systemName: symbols.rawValue)
    }
}
