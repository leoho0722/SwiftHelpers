//
//  AppIcon.swift
//  SwiftHelpers/AppIcon
//
//  Created by Leo Ho on 2023/12/31.
//

import Foundation

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

/// Define the behavior of changing the application icon.
@MainActor 
public protocol AppIconChangeable {
    
    /// Change the application icon with asset file.
    func change() async throws
    
    /// Reset to the default application icon.
    func reset() async throws
}

/// Define structure of AppIcon
public struct AppIcon {
    
    /// The name of the icon that you want to change. Default is nil, which means using the application default AppIcon.
    public let alternateIconName: String?
     
    public init(icon name: String? = nil) {
        self.alternateIconName = name
    }
}

extension AppIcon: AppIconChangeable {
    
    public func change() async throws {
        #if os(iOS)
        if UIApplication.shared.supportsAlternateIcons {
            try await UIApplication.shared.setAlternateIconName(alternateIconName)
        } else {
            fatalError("The CFBundleIcons and CFBundleAlternateIcons key has not been set in your app's Info.plist file")
        }
        #elseif os(macOS)
        if let alternateIconName {
            NSApplication.shared.applicationIconImage = NSImage(named: alternateIconName)
        } else {
            NSApplication.shared.applicationIconImage = nil
        }
        #endif
    }
    
    public func reset() async throws {
        #if os(iOS)
        try await UIApplication.shared.setAlternateIconName(nil)
        #elseif os(macOS)
        NSApplication.shared.applicationIconImage = nil
        #endif
    }
}
