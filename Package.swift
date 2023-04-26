// swift-tools-version:5.8

///
import PackageDescription

///
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
            url: "https://github.com/jeremyabannister/Color-from-hex",
            "0.1.1" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/EagerOrLazy-module",
            "0.1.0" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            "0.6.0" ..< "0.7.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/View-bubblify",
            "0.1.2" ..< "0.2.0"
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIToolkit",
            dependencies: [
                "Color-from-hex",
                "EagerOrLazy-module",
                "FoundationToolkit",
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
