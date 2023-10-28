// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHelpers",
    platforms: [.iOS(.v15)],
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
            linkerSettings: [
                .linkedFramework("SwiftUI"),
                .linkedFramework("UIKit"),
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
