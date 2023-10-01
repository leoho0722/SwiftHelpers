// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHelpers",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "LHNetworkHelpers",
            targets: ["LHNetworkHelpers"]
        ),
        .library(
            name: "LHTypeExtensionHelpers",
            targets: ["LHTypeExtensionHelpers"]
        ),
        .library(
            name: "LHUIHelpers",
            targets: ["LHUIHelpers"]
        ),
        .library(
            name: "LHSFSymbolsHelpers",
            targets: ["LHSFSymbolsHelpers"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "LHNetworkHelpers",
            path: "Sources/LHNetworkHelpers"
        ),
        .target(
            name: "LHTypeExtensionHelpers",
            path: "Sources/LHTypeExtensionHelpers",
            linkerSettings: [
                .linkedFramework("UIKit"),
            ]
        ),
        .target(
            name: "LHUIHelpers",
            path: "Sources/LHUIHelpers",
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        ),
        .target(
            name: "LHSFSymbolsHelpers",
            path: "Sources/LHSFSymbolsHelpers",
            linkerSettings: [
                .linkedFramework("SwiftUI"),
                .linkedFramework("UIKit"),
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
