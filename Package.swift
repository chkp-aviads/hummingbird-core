// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "hummingbird-core",
    platforms: [.iOS(.v12), .tvOS(.v12)],
    products: [
        .library(name: "HummingbirdCore", targets: ["HummingbirdCore"]),
        .library(name: "HummingbirdHTTP2", targets: ["HummingbirdHTTP2"]),
        .library(name: "HummingbirdTLS", targets: ["HummingbirdTLS"]),
        .library(name: "HummingbirdCoreXCT", targets: ["HummingbirdCoreXCT"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.4.0"),
        .package(url: "https://github.com/chkp-aviads/swift-nio.git", from: "2.84.0"),
        .package(url: "https://github.com/chkp-aviads/swift-nio-extras.git", .upToNextMinor(from: "1.26.0")),
        .package(url: "https://github.com/chkp-aviads/swift-nio-http2.git", from: "1.36.2"),
        .package(url: "https://github.com/chkp-aviads/swift-nio-ssl.git", from: "2.32.0"),
        .package(url: "https://github.com/chkp-aviads/swift-nio-transport-services.git",from: "1.25.2"),
    ],
    targets: [
        .target(name: "HummingbirdCore", dependencies: [
            .product(name: "Logging", package: "swift-log"),
            .product(name: "NIOCore", package: "swift-nio"),
            .product(name: "NIOConcurrencyHelpers", package: "swift-nio"),
            .product(name: "NIOExtras", package: "swift-nio-extras"),
            .product(name: "NIOHTTP1", package: "swift-nio"),
            .product(name: "NIOPosix", package: "swift-nio"),
            .product(name: "NIOTransportServices", package: "swift-nio-transport-services"),
        ]),
        .target(name: "HummingbirdCoreXCT", dependencies: [
            .product(name: "NIOCore", package: "swift-nio"),
            .product(name: "NIOConcurrencyHelpers", package: "swift-nio"),
            .product(name: "NIOHTTP1", package: "swift-nio"),
            .product(name: "NIOPosix", package: "swift-nio"),
            .product(name: "NIOSSL", package: "swift-nio-ssl"),
        ]),
        .target(name: "HummingbirdHTTP2", dependencies: [
            .byName(name: "HummingbirdCore"),
            .product(name: "NIOCore", package: "swift-nio"),
            .product(name: "NIOHTTP2", package: "swift-nio-http2"),
            .product(name: "NIOSSL", package: "swift-nio-ssl"),
        ]),
        .target(name: "HummingbirdTLS", dependencies: [
            .byName(name: "HummingbirdCore"),
            .product(name: "NIOCore", package: "swift-nio"),
            .product(name: "NIOSSL", package: "swift-nio-ssl"),
        ]),
        // test targets
        .testTarget(
            name: "HummingbirdCoreTests",
            dependencies:
            [
                .byName(name: "HummingbirdCore"),
                .byName(name: "HummingbirdCoreXCT"),
                .product(name: "NIOEmbedded", package: "swift-nio"),
            ],
            resources: [.process("Certificates")]
        ),
        .testTarget(name: "HummingbirdTLSTests", dependencies: [
            .byName(name: "HummingbirdTLS"),
            .byName(name: "HummingbirdCoreXCT"),
        ]),
    ]
)
