# Daon xProof Document SDK

The xProof Document SDK is a comprehensive and modular software development kit designed for high-quality document image capture and processing within mobile applications. Built with flexibility and performance in mind, it supports both iOS and Android platforms, enabling developers to implement advanced document scanning, recognition, and data extraction features with minimal effort.

### Dependencies

The following SPM dependencies are required depending on which optional xProof Document SDK modules are used:

| Package | Version | Source | Required by |
|---|---|---|---|
| `DaonFACE` | 5.3.175 | https://github.com/daoninc/face-sdk-ios | `DaonXProofDocumentFaceProcessor` |
| `libtesseract` | 0.2.0 | https://github.com/SwiftyTesseract/libtesseract | `DaonXProofDocumentMRZProcessor` |