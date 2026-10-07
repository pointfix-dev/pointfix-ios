// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "PointfixKit",
    platforms: [.iOS("26.0")],
    products: [
        .library(name: "PointfixKit", targets: ["PointfixKit"])
    ],
    targets: [
        .binaryTarget(
            name: "PointfixKit",
            url: "https://download.pointfix.dev/ios/PointfixKit-1.0.0.xcframework.zip",
            checksum: "0ee7115837983e6c3d0c88a6386637286f07eae912ff26d0f4bf0e45d4e8fe1d"
        )
    ]
)
