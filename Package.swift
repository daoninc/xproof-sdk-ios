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
                "DaonXProofDocumentMRZProcessor"
            ]
        ),
        .library(
            name: "DaonXProofDocumentFaceProcessor",
            targets: [
                "DaonXProofDocumentFaceProcessor"
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
    targets: [
         .binaryTarget(
            name: "CaptureCommon",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/CaptureCommon.xcframework.zip",
            checksum: "1c2bba89be41e0d5f4a4f3138b0579ac17cc7849ecd76cebf16578a6b3ec3ab3"
         ),
         .binaryTarget(
            name: "DaonIDCapture",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/DaonIDCapture.xcframework.zip",
            checksum: "bbaefcccbf021bfca769b84e9a714df0571c9736d28e870ea5625011d94930ab"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentFaceProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/DaonXProofDocumentFaceProcessor.xcframework.zip",
            checksum: "2075bf401dea19199ed8e8d34b8700798ee0a9a298a3e5c8e85189e58df2f519"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentIADFrameProvider",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/DaonXProofDocumentIADFrameProvider.xcframework.zip",
            checksum: "9ad39aecfd1a582be98d52ba9b5b4bf435c2ab4fc18b56ffa33c7eba8d6efb6c"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentIDCaptureProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/DaonXProofDocumentIDCaptureProcessor.xcframework.zip",
            checksum: "75a6f28dd5db27eff9b57e982b34d4c014527112cdd1d39bd163559c2e3c1017"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentMRZProcessor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/DaonXProofDocumentMRZProcessor.xcframework.zip",
            checksum: "750f9c9257f03fba92debd301ca4e0edb9287fcaddca5e0e637ed1fbc5048218"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentPDF417Processor",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/DaonXProofDocumentPDF417Processor.xcframework.zip",
            checksum: "f97ef4180e2f3396e63dd97d08df6014fa815cc9374f8297272a3a73b77ada58"
         ),
         .binaryTarget(
            name: "DaonXProofDocumentSDK",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/DaonXProofDocumentSDK.xcframework.zip",
            checksum: "fa1c7cbab5f6e50e3f6986667f7faf6741b9eb0d27665586c3a22504932c993b"
         ),
         .binaryTarget(
            name: "DocSdkMobile",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/DocSdkMobile.xcframework.zip",
            checksum: "0bba5076255e57696f29ed66b70df00bd816fa8234b922c1ab3853b0c88e76b8"
         ),
         .binaryTarget(
            name: "IADCommon",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/IADCommon.xcframework.zip",
            checksum: "df195c2bd9cf41a6747e3459e2b48dcade1124a9a78d86a1d9bb2a55124faaaf"
         ),
         .binaryTarget(
            name: "IDLiveDocCaptureIAD",
            url: "https://github.com/daoninc/xproof-sdk-ios/releases/download/2.7.7/IDLiveDocCaptureIAD.xcframework.zip",
            checksum: "302d63aee6708eaed5b27a8ede3267aa1a914caaeb448436526ff9e150990763"
         ),
    ]
)
