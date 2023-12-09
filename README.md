# SwiftHelpers

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fleoho0722%2FSwiftHelpers%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/leoho0722/SwiftHelpers)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fleoho0722%2FSwiftHelpers%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/leoho0722/SwiftHelpers)
![GitHub tag (with filter)](https://img.shields.io/github/v/tag/leoho0722/SwiftHelpers?label=Release)

Use Swift to create some amazing things!

## Minimum OS Requirement

* iOS 15.0 or above

## Package Development Environment

* macOS Sonoma 14.2 (23C64)
* Xcode 15.1 (15C65)
* Swift 5.9

## Install

Currently only installation using Swift Package Manager is supported.

```git
https://github.com/leoho0722/SwiftHelpers.git
```

![Install](./Assets/Install.png)

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

### Example: Safely use SF Symbols with UIKit and SwiftUI

#### UIKit

```swift
import SwiftHelpers
import UIKit

class ViewController: UIViewController {
    
    private let imageView = UIImageView()

    override func viewDidLoad() {
        imageView.image = UIImage(systemIcon: .person) // Use SwiftHelpers
        // imageView.image = UIImage(systemName: "person") // Use UIKit
        view.addSubView(imageView)
        
        // ...
    }
    
    // ...
}
```

#### SwiftUI

```swift
import SwiftHelpers
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Image(systemIcon: .person) // Use SwiftHelpers
        // Image(systemName: "person") // Use SwiftUI
        
        // ...
    }
}
```
