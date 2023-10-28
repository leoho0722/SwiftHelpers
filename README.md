# SwiftHelpers

Use Swift to create some amazing things!

## Minimum OS Requirement

* iOS 15.0 or above

## Package Developement Environment

* macOS Sonoma 14.1 (23B74)
* Xcode 15.0.1 (15A507)
* Swift 5.9

## Install

Currently only installation using Swift Package Manager is supported.

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
