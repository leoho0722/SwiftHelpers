//
//  UIImage+Extensions.swift
//  SwiftHelpers/Extensions/UIKit
//
//  Created by Leo Ho on 2023/10/2.
//

#if canImport(UIKit)
import UIKit

public extension UIImage {
    
    /// Use ``SFSymbols`` to initialize `UIImage`
    convenience init?(symbols: SFSymbols) {
        self.init(systemName: symbols.rawValue)
    }
}

// MARK: - Deprecated

public extension UIImage {
    
    
}
#endif
