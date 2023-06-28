// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHelpers",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "NetworkHelpers",
            targets: ["NetworkHelpers"]
        ),
        .library(
            name: "TypeExtensionHelpers",
            targets: ["TypeExtensionHelpers"]
        ),
        .library(
            name: "UIHelpers",
            targets: ["UIHelpers"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "NetworkHelpers",
            path: "Sources/NetworkHelpers",
            linkerSettings: [
                .linkedFramework("Foundation")
            ]
        ),
        .target(
            name: "TypeExtensionHelpers",
            path: "Sources/TypeExtensionHelpers",
            linkerSettings: [
                .linkedFramework("Foundation")
            ]
        ),
        .target(
            name: "UIHelpers",
            path: "Sources/UIHelpers",
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
