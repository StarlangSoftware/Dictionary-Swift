// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dictionary",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Dictionary",
            targets: ["Dictionary"]),
    ],
    dependencies: [
        .package(name: "Math", url: "https://github.com/StarlangSoftware/Math-Swift.git", .exact("1.0.11")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Dictionary",
            dependencies: ["Math"],
            resources: [.process("turkish_dictionary.txt"),.process("turkish_misspellings.txt"),
                        .process("lowercase.txt"),.process("mixedcase.txt"),.process("turkish_morphological_lexicon.txt")]),
        .testTarget(
            name: "DictionaryTests",
            dependencies: ["Dictionary"]),
    ]
)
