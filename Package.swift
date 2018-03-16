// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftServer",
    dependencies: [
        .package(url: "https://github.com/apple/swift-package-manager.git", from: "0.1.0"),
    	.package(url: "https://github.com/IBM-Swift/BlueSocket", from: "0.12.83")
    ],
    targets: [
        .target(
            name:"Main",
            dependencies: ["Routes","Server", "Utility"]),
        .target(
            name: "Request"),
        .target(
            name: "Routes",
            dependencies: ["Request"]),
        .target(
            name: "Server",
            dependencies: ["Request","Routes","Socket"]),
        .testTarget(
            name:"Test", 
            dependencies: ["Request", "Server"])
    ]
)
