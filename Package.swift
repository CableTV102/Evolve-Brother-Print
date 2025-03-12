// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "EvolvePrintBrother",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "EvolvePrintBrother",
            targets: ["EvoPrintPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "EvoPrintPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/EvoPrintPlugin"),
        .testTarget(
            name: "EvoPrintPluginTests",
            dependencies: ["EvoPrintPlugin"],
            path: "ios/Tests/EvoPrintPluginTests")
    ]
)