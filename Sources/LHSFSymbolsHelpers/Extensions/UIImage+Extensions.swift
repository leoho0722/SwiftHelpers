//
//  UIImage+Extensions.swift
//  SwiftHelpers/LHSFSymbolsHelpers
//
//  Created by Leo Ho on 2023/10/2.
//

import UIKit

public extension UIImage {
    
    convenience init?(systemIcon: SFSymbols) {
        self.init(systemName: systemIcon.rawValue)
    }
}
