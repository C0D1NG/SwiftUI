// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SwiftUIProjectGenerator",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(
            name: "swiftui-gen",
            targets: ["SwiftUIProjectGenerator"]
        )
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "SwiftUIProjectGenerator",
            dependencies: [],
            path: "Sources"
        )
    ]
)
