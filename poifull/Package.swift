// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "memoANDtimekensan",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "memoANDtimekensan", targets: ["memoANDtimekensan"]),
    ],
    targets: [
        .target(
            name: "memoANDtimekensan",
            dependencies: []
        ),
        .testTarget(
            name: "memoANDtimekensanTests",
            dependencies: ["memoANDtimekensan"]
        ),
    ]
)
