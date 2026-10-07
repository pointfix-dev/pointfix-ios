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
            checksum: "30f02f747e56b597bc4743f2609083d1efbc7d6255c81266704a18d5817e5f4e"
        )
    ]
)
