//
//  UIDevice+Extensions.swift
//  SwiftHelpers/TypeExtensionHelpers
//
//  Created by Leo Ho on 2023/7/1.
//

import UIKit

public extension UIDevice {
    
    var modelname: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let name = withUnsafePointer(to: &systemInfo.machine.0) { ptr in
            return String(cString: ptr)
        }
        return name
    }
}
