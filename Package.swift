// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIWeatherClone",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "SwiftUIWeatherClone",
            targets: ["SwiftUIWeatherClone"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            from: "1.0.0"
        )
    ],
    targets: [
        .target(
            name: "SwiftUIWeatherClone",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ],
            path: "SwiftUIWeatherClone"
        ),
        .testTarget(
            name: "SwiftUIWeatherCloneTests",
            dependencies: ["SwiftUIWeatherClone"],
            path: "Tests"
        )
    ]
)
