# KeyboardLayoutHelper

[![CI Status](http://img.shields.io/travis/Mojca Rojko/KeyboardLayoutHelper.svg?style=flat)](https://travis-ci.org/xtrinch/KeyboardLayoutHelper)
[![Version](https://img.shields.io/cocoapods/v/KeyboardLayoutHelper.svg?style=flat)](http://cocoapods.org/pods/KeyboardLayoutHelper)
[![License](https://img.shields.io/cocoapods/l/KeyboardLayoutHelper.svg?style=flat)](http://cocoapods.org/pods/KeyboardLayoutHelper)
[![Platform](https://img.shields.io/cocoapods/p/KeyboardLayoutHelper.svg?style=flat)](http://cocoapods.org/pods/KeyboardLayoutHelper)

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

## License

KeyboardLayoutHelper is available under the MIT license. See the LICENSE file for more info.
