// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "onelogin",
    products: [
        .library(name: "Calc", targets: ["Calc"]),
        .executable(name: "onelogin", targets: ["onelogin"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Calc", dependencies: []),
        .target(name: "onelogin", dependencies: ["Calc"]),
        .testTarget(name: "oneloginTests", dependencies: ["Calc"]),
    ]
)
