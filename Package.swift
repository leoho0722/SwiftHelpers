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
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "LHNetworkHelpers",
            path: "Sources/LHNetworkHelpers",
            linkerSettings: [
                .linkedFramework("Foundation")
            ]
        ),
        .target(
            name: "LHTypeExtensionHelpers",
            path: "Sources/LHTypeExtensionHelpers",
            linkerSettings: [
                .linkedFramework("Foundation")
            ]
        ),
        .target(
            name: "LHUIHelpers",
            path: "Sources/LHUIHelpers",
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
