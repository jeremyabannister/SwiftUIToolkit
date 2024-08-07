// swift-tools-version:5.10

///
import PackageDescription


///
let package = Package(
    name: "SwiftUIToolkit",
    platforms: [.macOS(.v10_15), .iOS(.v13), .watchOS(.v7), .tvOS(.v13)],
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
            "0.2.0" ..< "0.3.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/EagerOrLazy-package",
            "0.1.0" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            "0.8.0" ..< "0.9.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ScrollIfNecessary-package",
            "0.1.0" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/View-bubblify",
            "0.1.4" ..< "0.2.0"
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
