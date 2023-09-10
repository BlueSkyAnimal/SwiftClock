// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftClock",
    platforms: [
        .iOS(.v15),
        .macCatalyst(.v15),
        .macOS(.v12),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "SwiftClock",
            targets: ["SwiftClock"]),
    ],
    targets: [
        .target(
            name: "SwiftClock"),
        .testTarget(
            name: "SwiftClockTests",
            dependencies: ["SwiftClock"]),
    ]
)
