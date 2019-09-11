// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "MonetaryAmount",
    products: [
        .library(
            name: "MonetaryAmount",
            type: .static,
            targets: ["MonetaryAmount"]),
        .executable(
            name: "CurrenciesGenerator",
            targets: ["CurrenciesGenerator"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SoftwareEngineerChris/RoundedDecimal.git", from: "2.1.0"),
        .package(url: "https://github.com/stencilproject/Stencil.git", from: "0.13.0")
    ],
    targets: [
        .target(
            name: "MonetaryAmount",
            dependencies: ["RoundedDecimal"]),
        .testTarget(
            name: "MonetaryAmountTests",
            dependencies: ["MonetaryAmount"]),
        .target(
            name: "CurrenciesGenerator",
            dependencies: ["Stencil"]),
    ]
)
