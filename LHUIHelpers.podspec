Pod::Spec.new do |spec|
  spec.name          = "LHUIHelpers"
  spec.version       = "1.0.0"
  spec.summary       = "Use Swift to help developer!"
  spec.description   = "To help developer improve coding."
  spec.homepage      = "https://github.com/leoho0722/SwiftHelpers"
  spec.license       = { :type => "MIT", :file => "LICENSE" }
  spec.author        = { "leoho0722" => "leo160918@gmail.com" }
  spec.platform      = :ios, "15.0"
  spec.source        = { :git => "https://github.com/leoho0722/SwiftHelpers.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/LHUIHelpers/**/*.swift"
  spec.exclude_files = "*.sh"
  spec.frameworks    = "UIKit"
  spec.swift_version = '5.5'
end
