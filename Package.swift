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
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/CaptureCommon.xcframework.zip",
            checksum: "df48b35b949e467c4a75342478833031d3a6f7d9a2836cc38a64c1f4cb76f839"
         ),
         .binaryTarget(
            name: "DaonIDCapture",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/DaonIDCapture.xcframework.zip",
            checksum: "19a79dbaf6677e0648f1fe56996205f55dce96154e8451ba42d55850f9c9b5cb"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentFaceProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/DaonXProofDocumentFaceProcessor.xcframework.zip",
            checksum: "30fba91bde4280ca9eaa873141b7f77b848dbfafc55898dd1bdbfafa94c58567"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentIADFrameProvider",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/DaonXProofDocumentIADFrameProvider.xcframework.zip",
            checksum: "835ac889144c78a38eb039ec6a5c0cd31293e876be99827b8a89b3440eef5f62"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentIDCaptureProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/DaonXProofDocumentIDCaptureProcessor.xcframework.zip",
            checksum: "7bda9d92f5e4eaa376eb98c35db8862bf29421d359fca54d41bc71a75687c708"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentMRZProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/DaonXProofDocumentMRZProcessor.xcframework.zip",
            checksum: "f022a5e26d2e331688daced6e45ff85f9f79aba6e15e9a432d4c906c6eb315c4"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentPDF417Processor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/DaonXProofDocumentPDF417Processor.xcframework.zip",
            checksum: "99606d608eb967d7f370d94a6a7f0f9eb28b17ba26994be6ca556268bc8ce144"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentSDK",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/DaonXProofDocumentSDK.xcframework.zip",
            checksum: "be95aa5dadd75ccc6ada058b9f136861149869398017121f83f6d024568191e7"
         ),
         .binaryTarget(
            name: "DocSdkMobile",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/DocSdkMobile.xcframework.zip",
            checksum: "9d33bf62a466ca7235f0d3ff1c7d61e0fdeab2c84818f8244d5ff7b9eb5325e8"
         ),
         .binaryTarget(
            name: "IADCommon",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/IADCommon.xcframework.zip",
            checksum: "4ceb34c06a02f5cbd114705952c82322998ebdb85b43d7734ff83194fec5409f"
         ),
         .binaryTarget(
            name: "IDLiveDocCaptureIAD",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.10/IDLiveDocCaptureIAD.xcframework.zip",
            checksum: "5f03fc4fdaa7484f155e40b6a44d07ece49bfae6a9bc2032423a1815d24a79bd"
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
