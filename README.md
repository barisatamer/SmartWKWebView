# SmartWKWebView

[![Version](https://img.shields.io/cocoapods/v/SmartWKWebView.svg?style=flat)](http://cocoapods.org/pods/SmartWKWebView)
[![License](https://img.shields.io/cocoapods/l/SmartWKWebView.svg?style=flat)](http://cocoapods.org/pods/SmartWKWebView)
[![Platform](https://img.shields.io/cocoapods/p/SmartWKWebView.svg?style=flat)](http://cocoapods.org/pods/SmartWKWebView)

A WKWebView modal to show web pages, providing close button, title and url labels. Written in Swift.

Inspired by Instagram's web page component.

![demo](https://github.com/barisatamer/SmartWKWebView/blob/master/imgs/demo.gif?raw=true)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

* Xcode 9 or higher
* iOS 9.0 or higher
* Swift 4.0


## Installation

SmartWKWebView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SmartWKWebView'
```

## Usage

### Simple

```swift
import SmartWKWebView

let vc = SmartWKWebViewController()
vc.url = URL(string: "http://www.google.com/en")
present(vc, animated: true)
```



## Author

barisatamer, brsatamer@gmail.com

## License

SmartWKWebView is available under the MIT license. See the LICENSE file for more info.
