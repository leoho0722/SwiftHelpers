//
//  UIImage+Extensions.swift
//  SwiftHelpers/Extensions
//
//  Created by Leo Ho on 2023/10/2.
//

import UIKit

public extension UIImage {
    
    /// Use ``SFSymbols`` to initialize `UIImage`
    convenience init?(systemIcon: SFSymbols) {
        self.init(systemName: systemIcon.rawValue)
    }
}
