// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftClock",
    platforms: [
        .iOS(.v15),
        .macCatalyst(.v15),
        .macOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SwiftClock",
            targets: ["SwiftClock"]),
    ],
    dependencies: [
        .package(url: "https://github.com/BlueSkyAnimal/MyLibrary.git", branch: "main")
    ],
    targets: [
        .target(
            name: "SwiftClock",
            dependencies: ["MyLibrary"]),
        .testTarget(
            name: "SwiftClockTests",
            dependencies: ["SwiftClock"]),
    ]
)
