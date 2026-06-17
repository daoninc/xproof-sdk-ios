// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "DaonXProofDocumentSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DaonXProofDocumentSDK",
            targets: [
                "DaonXProofDocumentSDK"
            ]
        ),
        .library(
            name: "DaonXProofDocumentIDCaptureProcessor",
            targets: [
                "DaonXProofDocumentIDCaptureProcessor",
                "DaonIDCapture"
            ]
        ),
        .library(
            name: "DaonXProofDocumentMRZProcessor",
            targets: [
                "DaonXProofDocumentMRZProcessorProduct"
            ]
        ),
        .library(
            name: "DaonXProofDocumentFaceProcessor",
            targets: [
                "DaonXProofDocumentFaceProcessorProduct"
            ]
        ),
        .library(
            name: "DaonXProofDocumentPDF417Processor",
            targets: [
                "DaonXProofDocumentPDF417Processor"
            ]
        ),
        .library(
            name: "DaonXProofDocumentIADFrameProvider",
            targets: [
                "DaonXProofDocumentIADFrameProvider",
                "CaptureCommon",
                "DocSdkMobile",
                "IADCommon",
                "IDLiveDocCaptureIAD"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/daoninc/face-sdk-ios", from: "5.3.175"),
        .package(url: "https://github.com/SwiftyTesseract/libtesseract", .exact("0.2.0")),
    ],
    targets: [
         .binaryTarget(
            name: "CaptureCommon",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/CaptureCommon.xcframework.zip",
            checksum: "b4d73bed1cf9e37f0f5c2691354689a5a5672c23210ab279dcaf18f804bad98c"
         ),
         .binaryTarget(
            name: "DaonIDCapture",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/DaonIDCapture.xcframework.zip",
            checksum: "c9192099b89ee6699c7735bb2fc4aa8df2f7888633761485f82cb8fded0ad88b"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentFaceProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/DaonXProofDocumentFaceProcessor.xcframework.zip",
            checksum: "865b0b4970238482eb74d6e8cdc07d24ebc854226704c37367439bdeca03c36d"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentIADFrameProvider",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/DaonXProofDocumentIADFrameProvider.xcframework.zip",
            checksum: "c46db2c0896e42c2f806182b0e44a730ac2bef4b1cce45382667ab5c0f4d24e3"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentIDCaptureProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/DaonXProofDocumentIDCaptureProcessor.xcframework.zip",
            checksum: "6fce2d73dda6629ad6828ef637a4432e5fb8e82d1c7160fc79b20200b4406511"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentMRZProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/DaonXProofDocumentMRZProcessor.xcframework.zip",
            checksum: "3c11ea51cb17225108267b354b7a1915f1f29fd6ebb02102951c549f2237c40e"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentPDF417Processor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/DaonXProofDocumentPDF417Processor.xcframework.zip",
            checksum: "2c798663a01cca76690245a21c9f1f3737d260f722936f3c8b04dfc135d64716"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentSDK",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/DaonXProofDocumentSDK.xcframework.zip",
            checksum: "98e689e0722a4f354905bd456f1947cdcd0bcc17d2cf42db8cc0b09dcac370ab"
         ),
         .binaryTarget(
            name: "DocSdkMobile",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/DocSdkMobile.xcframework.zip",
            checksum: "0d3b423ca565bd77a40c7cc9656b356e3f0ad57ebbad93a35b43071bdaff80f0"
         ),
         .binaryTarget(
            name: "IADCommon",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/IADCommon.xcframework.zip",
            checksum: "74177cc553e9557185f97b8a4cf2bff0a9168ab7c400960e08cd476993093f25"
         ),
         .binaryTarget(
            name: "IDLiveDocCaptureIAD",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.11/IDLiveDocCaptureIAD.xcframework.zip",
            checksum: "0ad59ebbca075f201ba4fe171ed9412c6f9bc3c17eeeafbba27315e0fc28ac34"
         ),
         .target(
            name: "DaonXProofDocumentFaceProcessorProduct",
            dependencies: [
                "DaonXProofDocumentFaceProcessor",
                .product(name: "DaonFaceSDK", package: "face-sdk-ios"),
                .product(name: "DaonFaceQuality", package: "face-sdk-ios"),
            ],
            path: "Sources/FaceProcessorProduct"
         ),
         .target(
            name: "DaonXProofDocumentMRZProcessorProduct",
            dependencies: [
                "DaonXProofDocumentMRZProcessor",
                .product(name: "libtesseract", package: "libtesseract"),
            ],
            path: "Sources/MRZProcessorProduct"
         ),
    ]
)
