# KeyboardLayoutHelper

[![CI Status](http://img.shields.io/travis/xtrinch/KeyboardLayoutHelper.svg?style=flat)](https://travis-ci.org/xtrinch/KeyboardLayoutHelper)
[![Version](https://img.shields.io/cocoapods/v/KeyboardLayoutHelper.svg?style=flat)](http://cocoapods.org/pods/KeyboardLayoutHelper)
[![License](https://img.shields.io/cocoapods/l/KeyboardLayoutHelper.svg?style=flat)](http://cocoapods.org/pods/KeyboardLayoutHelper)
[![Platform](https://img.shields.io/cocoapods/p/KeyboardLayoutHelper.svg?style=flat)](http://cocoapods.org/pods/KeyboardLayoutHelper)

Provides a **layout constraint class** to help adapt UIView to the appearing keyboard, so the textfields dont get lost underneath it. Extremely simple usage as all you have to do is apply the provided KeyboardLayoutConstraint class in interface builder.

## Requirements

Version 0.0.2 supports Swift 3 only. Please use version 0.0.1 if you need support for Swift 2.2.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Screenshots of the example application with sample login and register pages:

**Vertically centered views:**

<img src='https://raw.githubusercontent.com/xTrinch/KeyboardLayoutHelper/master/Graphics/login.gif' alt='Moving content from under the keyboard in iOS / Swift'>

**Scroll view:**

<img src='https://raw.githubusercontent.com/xTrinch/KeyboardLayoutHelper/master/Graphics/register.gif' alt='Moving content from under the keyboard in iOS / Swift'>

## Usage

To prevent views obscuring your keyboard, make an auto layout bottom constraint, **give it a class of KeyboardLayoutConstraint** in module KeyboardLayoutHelper and the class will do the work necessary to increase it to accomodate appearing and disappearing keyboard. See example project on examples how to use it.

## Installation

KeyboardLayoutHelper is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KeyboardLayoutHelper"
```

## Author

Mojca Rojko, mojca.rojko@gmail.com

KeyboardLayoutConstraint class borrowed and made into a cocoapod from: https://github.com/MengTo/Spring/blob/master/Spring/KeyboardLayoutConstraint.swift

## License

KeyboardLayoutHelper is available under the MIT license. See the LICENSE file for more info.
