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
                "DaonXProofDocumentSDK",
                "DaonDeviceSignals"
            ]
        ),
        .library(
            name: "DaonXProofDocumentIDCaptureProcessor",
            targets: [
                "DaonXProofDocumentIDCaptureProcessor"
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
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/CaptureCommon.xcframework.zip",
            checksum: "bd6b06bd6ef554fc61fa423730bd21d73b89ab6eec71e7204ae56e546f7ef3dd"
         ),
         .binaryTarget(
            name: "DaonDeviceSignals",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/DaonDeviceSignals.xcframework.zip",
            checksum: "fb80f693891fded7428bdfb2018fa482aac5fc22308034624e23a4ce727e52c4"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentFaceProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/DaonXProofDocumentFaceProcessor.xcframework.zip",
            checksum: "50461288f052013ad4eccb34d7ff1c4c282e2524567103dcf7938899b062ca4e"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentIADFrameProvider",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/DaonXProofDocumentIADFrameProvider.xcframework.zip",
            checksum: "3c1fe54d071f6bb7390f2ffc0ddcd071b00cbf77a7152df3cfcb52d598a2c031"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentIDCaptureProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/DaonXProofDocumentIDCaptureProcessor.xcframework.zip",
            checksum: "33f9adb8fc8193b98d7b05203b088ce03756d875eafc08c6a14502204b1382ee"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentMRZProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/DaonXProofDocumentMRZProcessor.xcframework.zip",
            checksum: "08d09a5466b28e80b982a8baa09d1378a49fae731b8cbbf799ee3543d9ffc0c9"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentPDF417Processor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/DaonXProofDocumentPDF417Processor.xcframework.zip",
            checksum: "2726d0668075dcfb833ba29f12541b6a6abcee6b3d1bea64ed486f25a2d40842"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentSDK",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/DaonXProofDocumentSDK.xcframework.zip",
            checksum: "c86e0af6a772b0e181645b7c11edfb4977db3fd1e83fe48f0428358b1d3a1db7"
         ),
         .binaryTarget(
            name: "DocSdkMobile",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/DocSdkMobile.xcframework.zip",
            checksum: "4d18ae4ed636cfae852528529a20497309375281c5430d6641631fe4722651c2"
         ),
         .binaryTarget(
            name: "IADCommon",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/IADCommon.xcframework.zip",
            checksum: "ebb3eac88bb7902e76721135ba6dda628c6366fa5dd13763c2923dac5f630351"
         ),
         .binaryTarget(
            name: "IDLiveDocCaptureIAD",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.8.12/IDLiveDocCaptureIAD.xcframework.zip",
            checksum: "41d0c35757753e49498776a2810eb00aba7265a190f692842a51da5661ee6d46"
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
