// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "EngineExtensions",
    products: [
        .library(name: "EngineExtensions", targets: ["EngineExtensions"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/engine.git", from: "3.0.0-rc")
    ],
    targets: [
        .target(name: "EngineExtensions", dependencies: ["FormURLEncoded", "HTTP", "Multipart", "WebSocket"]),
        .testTarget(name: "EngineExtensionsTests", dependencies: ["EngineExtensions"])
    ]
)
