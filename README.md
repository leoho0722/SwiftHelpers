# SwiftHelpers

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fleoho0722%2FSwiftHelpers%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/leoho0722/SwiftHelpers)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fleoho0722%2FSwiftHelpers%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/leoho0722/SwiftHelpers)

Use Swift to create some amazing things!

## Minimum OS Requirement

* iOS 15.0 or above

## Package Developement Environment

* macOS Sonoma 14.1 (23B74)
* Xcode 15.0.1 (15A507)
* Swift 5.9

## Install

Currently only installation using Swift Package Manager is supported.

```git
https://github.com/leoho0722/SwiftHelpers.git
```

![Install](/Assets/Install.png)

## How to use

### Example: Convert to JSON Data

```swift
import Foundation

import SwiftHelpers

func createURLRequest<E>(with url: URL,
                         method: HTTP.HTTPMethod,
                         parameters: E) -> URLRequest where E: Encodable {
    var request = URLRequest(url: url)
    request.httpMethod = method.rawValue
    request.allHTTPHeaderFields = [
        HTTP.HTTPHeaderFields.contentType.rawValue : HTTP.HTTPContentType.json.rawValue
    ]
    
    if method != .get {
        request.httpBody = try? JSON.toJsonData(data: parameters)
    }
    
    return request
}
```
