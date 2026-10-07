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
            url: "https://download.pointfix.dev/ios/PointfixKit-0.2.0.xcframework.zip",
            checksum: "9febfa318c6d5f0649f77d15e64ab52f836a5bfb7941394ac8fe7576562ea820"
        )
    ]
)
