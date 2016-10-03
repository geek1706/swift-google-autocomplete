# Google Autocomplete in Swift
Fetch google's autocomplete suggestions

[![CI Status](https://travis-ci.org/geek1706/swift-google-autocomplete.svg?branch=master)](https://travis-ci.org/geek1706/swift-google-autocomplete)
[![Version](https://img.shields.io/cocoapods/v/swift-google-autocomplete.svg?style=flat)](http://cocoapods.org/pods/swift-google-autocomplete)
[![License](https://img.shields.io/cocoapods/l/swift-google-autocomplete.svg?style=flat)](http://cocoapods.org/pods/swift-google-autocomplete)
[![Platform](https://img.shields.io/cocoapods/p/swift-google-autocomplete.svg?style=flat)](http://cocoapods.org/pods/swift-google-autocomplete)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Requirements
- Xcode 8+
- Swift 3.0+

## Installation
### Cocoapods
```ruby
platform :ios, '8.0'
pod 'swift-google-autocomplete'
```
### Carthage
```
github "geek1706/swift-google-autocomplete"
```
##Usage
```swift
// Fetch google's autocomplete suggestions for a given seed term
AutoComplete.getQuerySuggestions("side to side") { (results, error) in
  // Do something with suggestion results
}
```
## Author
Trung Nguyen, trung1706@gmail.com
## License
MIT license.
