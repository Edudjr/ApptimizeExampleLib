// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExampleLib",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ExampleLib",
            targets: ["ExampleLib"]),
    ],
    dependencies: [
        .package(name: "Apptimize",
                 url: "https://github.com/urbanairship/apptimize-ios-kit",
                 .exact("3.4.21")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ExampleLib",
            dependencies: ["Apptimize"]),
        .testTarget(
            name: "ExampleLibTests",
            dependencies: ["ExampleLib"]),
    ]
)
