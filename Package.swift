// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SwiftUIToolkit",
    platforms: [.macOS(.v12), .iOS(.v15), .watchOS(.v8), .tvOS(.v15)],
    products: [
        .library(
            name: "SwiftUIToolkit",
            targets: ["SwiftUIToolkit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/Color-from-hex",
            .upToNextMinor(from: "0.2.1")
        ),
        .package(
            url: "https://github.com/jeremyabannister/EagerOrLazy-package",
            .upToNextMinor(from: "0.1.1")
        ),
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            .upToNextMinor(from: "0.8.4")
        ),
        .package(
            url: "https://github.com/jeremyabannister/ScrollIfNecessary-package",
            .upToNextMinor(from: "0.1.1")
        ),
        .package(
            url: "https://github.com/jeremyabannister/View-bubblify",
            .upToNextMinor(from: "0.1.5")
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIToolkit",
            dependencies: [
                "Color-from-hex",
                .product(name: "EagerOrLazy-module", package: "EagerOrLazy-package"),
                "FoundationToolkit",
                .product(name: "ScrollIfNecessary-module", package: "ScrollIfNecessary-package"),
                "View-bubblify",
            ]
        ),
        .testTarget(
            name: "SwiftUIToolkit-tests",
            dependencies: [
                "SwiftUIToolkit",
            ]
        ),
    ]
)
