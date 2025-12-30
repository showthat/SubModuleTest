// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SubModuleTest",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Core",
            targets: ["TestMainFramework"]),
        .library(
            name: "Goodbye",
            targets: ["GoodbyeWrapper"]),
        .library(
            name: "Hello",
            targets: ["HelloWrapper"])
        // cocoapod 또는 xcframewok로 된 외부 프레임워크는 내것 추가하듯이 하면 됨.
        // cocoapod는 외부 프레임워크 다운받아서 사용, 다운 못 받으면 cocoapod로 배포 고려해야함
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
// SPM으로된 외부 SDK 의존성 추가시..
//        .package(
//                url: "https://github.com/some/ExternalSDK.git",
//                from: "1.2.0"
//            )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TestMainFramework",
            path: "Sources/TestMainFramework.xcframework"
        ),
        .binaryTarget(
            name: "TestPrintGoodbyeFramework",
            path: "Sources/TestPrintGoodbyeFramework.xcframework"
        ),
        .binaryTarget(
            name: "TestPrintHelloFramework",
            path: "Sources/TestPrintHelloFramework.xcframework"
        ),
        .target(
            name: "HelloWrapper",
            dependencies: [
                "TestMainFramework",
                "TestPrintHelloFramework"
            ]
        ),
        .target(
            name: "GoodbyeWrapper",
            dependencies: [
                "TestMainFramework",
                "TestPrintGoodbyeFramework"
                
                // SPM으로된 외부 SDK 의존성 추가시..
//                .product(
//                    name: "ExternalSDK",
//                    package: "ExternalSDK"
//                )
            ]
        )
    ]
)
