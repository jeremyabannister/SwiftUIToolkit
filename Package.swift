// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "SwiftUIToolkit",
    platforms: [.macOS(.v10_15), .iOS(.v13), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(
            name: "SwiftUIToolkit",
            targets: ["SwiftUIToolkit"]
        ),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "SwiftUIToolkit",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftUIToolkit-tests",
            dependencies: ["SwiftUIToolkit"]
        ),
    ]
)
