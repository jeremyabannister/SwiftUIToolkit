// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "SwiftUIToolkit",
    platforms: [.macOS(.v10_15), .iOS(.v13), .watchOS(.v6), .tvOS(.v13)],
    products: [
        
        ///
        .library(
            name: "SwiftUIToolkit",
            targets: ["SwiftUIToolkit"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            from: "0.1.5"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/EagerOrLazy",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIToolkit",
            dependencies: [
                
                ///
                "FoundationToolkit",
                
                ///
                "EagerOrLazy"
            ]
        ),
        .testTarget(
            name: "SwiftUIToolkit-tests",
            dependencies: ["SwiftUIToolkit"]
        ),
    ]
)
