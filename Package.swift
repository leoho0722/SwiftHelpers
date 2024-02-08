// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHelpers",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "SwiftHelpers",
            targets: ["SwiftHelpers"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftHelpers",
            path: "Sources/SwiftHelpers",
            exclude: [
                "../../build-documentation.sh"
            ],
            linkerSettings: [
                .linkedFramework("SwiftUI"),
                .linkedFramework("UIKit", .when(platforms: [.iOS])),
                .linkedFramework("AppKit", .when(platforms: [.macOS]))
            ]
        ),
        .testTarget(
            name: "SwiftHelpersUnitTests",
            dependencies: [
                .target(name: "SwiftHelpers")
            ],
            path: "Sources/SwiftHelpersUnitTests",
            exclude: [
                "../../build-documentation.sh"
            ],
            linkerSettings: [
                .linkedFramework("SwiftUI"),
                .linkedFramework("UIKit", .when(platforms: [.iOS])),
                .linkedFramework("AppKit", .when(platforms: [.macOS]))
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
