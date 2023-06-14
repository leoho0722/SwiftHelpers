// swift-tools-version: 5.9
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
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.2.0")
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
        )
    ],
    swiftLanguageVersions: [.v5]
)
