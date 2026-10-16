// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "FluctSDKMediationAdapterAppLovin",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "FluctSDKMediationAdapterAppLovin",
            targets: ["FluctSDKMediationAdapterAppLovin"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/voyagegroup/FluctSDK-iOS-Swift-Package.git",
            exact: "0.0.1"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            exact: "13.6.4"
        ),
    ],
    targets: [
        .target(
            name: "FluctSDKMediationAdapterAppLovin",
            dependencies: [
                .product(name: "FluctSDK", package: "FluctSDK-iOS-Swift-Package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            publicHeadersPath: "include"
        ),
    ]
)
