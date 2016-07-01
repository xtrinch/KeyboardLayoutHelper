#
# Be sure to run `pod lib lint KeyboardLayoutHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KeyboardLayoutHelper'
  s.version          = '0.0.1'
  s.summary          = 'Keyboard layout constraint class to help adapt UIView to the appearing keyboard, so the textfields dont get lost underneath it.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Keyboard layout constraint class to help adapt UIView to the appearing keyboard, so the textfields dont get lost underneath it. Usage is very simple, just apply the KeyboardLayoutConstraint class to the bottom constraint of UIView or its subclass and the view will move up and down with the keyboard.

                       DESC

  s.homepage         = 'https://github.com/xtrinch/KeyboardLayoutHelper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mojca Rojko' => 'mojca.rojko@gmail.com' }
  s.source           = { :git => 'https://github.com/xTrinch/KeyboardLayoutHelper.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'KeyboardLayoutHelper/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KeyboardLayoutHelper' => ['KeyboardLayoutHelper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
