//
//  UIDevice+Extensions.swift
//  SwiftHelpers/LHTypeExtensionHelpers
//
//  Created by Leo Ho on 2023/7/1.
//

import UIKit

public extension UIDevice {
    
    /// Device's modelname
    /// - Returns: Like `iPhone12,8`
    var modelname: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let name = withUnsafePointer(to: &systemInfo.machine.0) { ptr in
            return String(cString: ptr)
        }
        return name
    }
    
    /// Device's devicename
    /// - Returns: Like `iPhone SE (2nd generation)`
    var devicename: String {
        switch modelname {
            // MARK: iPhone
        case "iPhone1,1":
            return "iPhone"
            // MARK: iPhone 3G
        case "iPhone1,2":
            return "iPhone 3G"
            // MARK: iPhone 3GS
        case "iPhone2,1":
            return "iPhone 3GS"
            // MARK: iPhone 4
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":
            return "iPhone 4"
            // MARK: iPhone 4S
        case "iPhone4,1":
            return "iPhone 4S"
            // MARK: iPhone 5
        case "iPhone5,1":
            return "iPhone 5"
            // MARK: iPhone 5c
        case "iPhone5,3", "iPhone5,4":
            return "iPhone 5c"
            // MARK: iPhone 5s
        case "iPhone6,1", "iPhone6,2":
            return "iPhone 5s"
            // MARK: iPhone 6／iPhone 6 Plus Series
        case "iPhone7,2":
            return "iPhone 6"
        case "iPhone7,1":
            return "iPhone 6 Plus"
            // MARK: iPhone 6s／iPhone 6s Plus Series
        case "iPhone8,1":
            return "iPhone 6s"
        case "iPhone8,2":
            return "iPhone 6s Plus"
            // MARK: iPhone SE (1st generation)
        case "iPhone8,4":
            return "iPhone SE (1st generation)"
            // MARK: iPhone 7／iPhone 7 Plus Series
        case "iPhone9,1", "iPhone9,3":
            return "iPhone 7"
        case "iPhone9,2", "iPhone9,4":
            return "iPhone 7 Plus"
            // MARK: iPhone 8／iPhone 8 Plus Series
        case "iPhone10,1", "iPhone10,4":
            return "iPhone 8"
        case "iPhone10,2", "iPhone10,5":
            return "iPhone 8 Plus"
            // MARK: iPhone X
        case "iPhone10,3", "iPhone10,6":
            return "iPhone X"
            // MARK: iPhone XR
        case "iPhone11,8":
            return "iPhone XR"
            // MARK: iPhone XS／iPhone XS Max Series
        case "iPhone11,2":
            return "iPhone XS"
        case "iPhone11,4", "iPhone11,6":
            return "iPhone XS Max"
            // MARK: iPhone 11／iPhone 11 Pro Series
        case "iPhone12,1":
            return "iPhone 11"
        case "iPhone12,3":
            return "iPhone 11 Pro"
        case "iPhone12,5":
            return "iPhone 11 Pro Max"
            // MARK: iPhone SE (2nd generation)
        case "iPhone12,8":
            return "iPhone SE (2nd generation)"
            // MARK: iPhone 12／iPhone 12 Pro Series
        case "iPhone13,1":
            return "iPhone 12 mini"
        case "iPhone13,2":
            return "iPhone 12"
        case "iPhone13,3":
            return "iPhone 12 Pro"
        case "iPhone13,4":
            return "iPhone 12 Pro Max"
            // MARK: iPhone 13／iPhone 13 Pro Series
        case "iPhone14,4":
            return "iPhone 13 mini"
        case "iPhone14,5":
            return "iPhone 13"
        case "iPhone14,2":
            return "iPhone 13 Pro"
        case "iPhone14,3":
            return "iPhone 13 Pro Max"
            // MARK: iPhone SE (3rd generation)
        case "iPhone14,6":
            return "iPhone SE (3rd generation)"
            // MARK: iPhone 14／iPhone 14 Pro Series
        case "iPhone14,7":
            return "iPhone 14"
        case "iPhone14,8":
            return "iPhone 14 Plus"
        case "iPhone15,2":
            return "iPhone 14 Pro"
        case "iPhone15,3":
            return "iPhone 14 Pro Max"
            // MARK: iPod Touch Series
        case "iPod1,1":
            return "iPod Touch"
        case "iPod2,1":
            return "iPod touch (2nd generation)"
        case "iPod3,1":
            return "iPod touch (3rd generation)"
        case "iPod4,1":
            return "iPod touch (4th generation)"
        case "iPod5,1":
            return "iPod touch (5th generation)"
        case "iPod7,1":
            return "iPod touch (6th generation)"
        case "iPod9,1":
            return "iPod touch (7th generation)"
            // MARK: iPad Series
        case "iPad1,1":
            return "iPad"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":
            return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":
            return "iPad (3rd generation)"
        case "iPad3,4", "iPad3,5", "iPad3,6":
            return "iPad (4th generation)"
        case "iPad6,11", "iPad6,12":
            return "iPad (5th generation)"
        case "iPad7,5", "iPad7,6":
            return "iPad (6th generation)"
        case "iPad7,11", "iPad7,12":
            return "iPad (7th generation)"
        case "iPad11,6", "iPad11,7":
            return "iPad (8th generation)"
        case "iPad12,1", "iPad12,2":
            return "iPad (9th generation)"
        case "iPad13,18", "iPad13,19":
            return "iPad (10th generation)"
            // MARK: iPad mini Series
        case "iPad2,5", "iPad2,6", "iPad2,7":
            return "iPad mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":
            return "iPad mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":
            return "iPad mini 3"
        case "iPad5,1", "iPad5,2":
            return "iPad mini 4"
        case "iPad11,1", "iPad11,2":
            return "iPad mini (5th generation)"
        case "iPad14,1", "iPad14,2":
            return "iPad mini (6th generation)"
            // MARK: iPad Air Series
        case "iPad4,1", "iPad4,2", "iPad4,3":
            return "iPad Air"
        case "iPad5,3", "iPad5,4":
            return "iPad Air 2"
        case "iPad11,3", "iPad11,4":
            return "iPad Air (3rd generation)"
        case "iPad13,1", "iPad13,2":
            return "iPad Air (4th generation)"
        case "iPad13,16", "iPad13,17":
            return "iPad Air (5th generation)"
            // MARK: iPad Pro Series
        case "iPad6,7", "iPad6,8":
            return "iPad Pro (12.9-inch)"
        case "iPad6,3", "iPad6,4":
            return "iPad Pro (9.7-inch)"
        case "iPad7,1", "iPad7,2":
            return "iPad Pro (12.9-inch) (2nd generation)"
        case "iPad7,3", "iPad7,4":
            return "iPad Pro (10.5-inch)"
        case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":
            return "iPad Pro (11-inch)"
        case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":
            return "iPad Pro (12.9-inch) (3rd generation)"
        case "iPad8,9", "iPad8,10":
            return "iPad Pro (11-inch) (2nd generation)"
        case "iPad8,11", "iPad8,12":
            return "iPad Pro (12.9-inch) (4th generation)"
        case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7":
            return "iPad Pro (11-inch) (3rd generation)"
        case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11":
            return "iPad Pro (12.9-inch) (5th generation)"
        case "i386", "x86_64", "arm64":
            return "Simulator"
        default:
            return modelname
        }
    }
}
