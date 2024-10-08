// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "AuthenticationDTOs",
	platforms: [
		.macOS(.v15),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "AuthenticationDTOs",
			targets: ["Authentication"]),
	],
	dependencies: [
		.package(url: "https://github.com/vapor/jwt.git", from: "5.0.0"),
		.package(name: "UserDTOs", path: "../UserDTOs")
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "Authentication",
			dependencies: [
				.product(
					name: "JWT",
					package: "jwt"
				),
				.product(
					name: "UserDTOs",
					package: "UserDTOs"
				)
			]
		),
		.testTarget(
			name: "AuthenticationTests",
			dependencies: ["Authentication"]
		),
	]
)
