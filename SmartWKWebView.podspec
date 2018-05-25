#
# Be sure to run `pod lib lint SmartWKWebView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SmartWKWebView'
  s.version          = '0.1.1'
  s.summary          = 'A WKWebView modal to show web pages. Written in Swift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       A WKWebView modal to show web pages, providing close button, title and url labels. 
                       Written in Swift

                       Inspired by Instagram's web page component.
                       DESC

  s.homepage         = 'https://github.com/barisatamer/SmartWKWebView'
  s.screenshots      = 'https://github.com/barisatamer/SmartWKWebView/blob/master/imgs/demo.gif?raw=true'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'barisatamer' => 'brsatamer@gmail.com' }
  s.source           = { :git => 'https://github.com/barisatamer/SmartWKWebView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'SmartWKWebView/Classes/**/*'
  
  s.resource_bundles = {
    'SmartWKWebView' => ['SmartWKWebView/**/*.{storyboard,xib}']
  }

  s.resources = "SmartWKWebView/Assets/*.xcassets"

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
