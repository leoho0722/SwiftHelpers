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
    ],
    targets: [
        .target(
            name: "NetworkHelpers",
            path: "Sources/NetworkHelpers",
            linkerSettings: [
                .linkedFramework("Foundation")
            ]
        ),
    ],
    swiftLanguageVersions: [.version("5.5")]
)
