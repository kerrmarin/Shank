// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Biodag",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Biodag",
            targets: ["Biodag"]
        )
    ],
    targets: [
        .target(
            name: "Biodag"
        ),
        .testTarget(
            name: "BiodagTests",
            dependencies: ["Biodag"]
        )
    ]
)
