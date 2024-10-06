// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RemindersMacOS.Resources",
	platforms: [
		.macOS(.v15)
	],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RemindersMacOS.Resources",
            targets: ["RemindersMacOS.Resources"]),
    ],
	dependencies: [
		.package(url: "https://github.com/vapor/leaf.git", .upToNextMajor(from: "4.0.0")),
		.package(url: "https://github.com/binarybirds/swift-html", .upToNextMajor(from: "1.7.0"))
	],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RemindersMacOS.Resources",
			dependencies: [],
			resources: [
			  .copy("RemindersMacOS.Resources")
			]
		),
        .testTarget(
            name: "RemindersMacOS.Resources.Tests",
            dependencies: ["RemindersMacOS.Resources"]
        ),
    ]
)
