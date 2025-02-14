# live2d-sdk-ios

A CocoaPods library for integrating Live2D V5 into iOS projects, enabling developers to seamlessly add Live2D animated models to their applications.

## Features

- Full support for Live2D V5 models.
- Easy integration with iOS projects using CocoaPods.
- Optimized for performance on iOS devices.
- Customizable rendering and interactions.

---

## Requirements

- iOS 10.0 or later
- Xcode 12.0 or later
- Swift or Objective-C projects
- Live2D V5 compatible assets

---

## ⚠️ Warning

The official core library is not open-source, and only static libraries for the arm64 (real device) and x86_64 (simulator) architectures are provided. Currently, arm64 simulator architecture is not supported. You can use the Rosetta simulator in Xcode for development and debugging.

## Installation

### CocoaPods

To integrate `live2d-sdk-ios` into your iOS project using CocoaPods, follow these steps:

1. Add the following line to your `Podfile`:   
```ruby
pod 'Live2DSdk', :git => 'https://github.com/xiaoyvyv/live2d-sdk-ios.git'
```
2.	Install the pod:
```ruby
pod install
```

   
