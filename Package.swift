// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "GPUImage",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v9),
    ],
    products: [
        .library(name: "GPUImage", targets: ["GPUImage"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GPUImage",
            dependencies: [],
            path: "GPUImage",
            sources: ["Core"],
            resources: [
                .copy("Resources/lookup.png"),
                .copy("Resources/lookup_amatorka.png"),
                .copy("Resources/lookup_miss_etikate.png"),
                .copy("Resources/lookup_soft_elegance_1.png"),
                .copy("Resources/lookup_soft_elegance_2.png"),
            ],
            cSettings: [.headerSearchPath("Core")]
        )
    ]
)
