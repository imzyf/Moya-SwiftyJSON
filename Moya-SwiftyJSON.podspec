#
# Be sure to run `pod lib lint Moya-SwiftyJSON.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Moya-SwiftyJSON'
  s.version          = '0.1.0'
  s.summary          = 'Moya SwiftyJSON 对象映射'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Moya-SwiftyJSON 更方便的对象映射
                       DESC

  s.homepage         = 'https://github.com/imzyf/Moya-SwiftyJSON'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yifans_Z' => '168@yifans.com' }
  s.source           = { :git => 'https://github.com/imzyf/Moya-SwiftyJSON.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/zhaoyifans'

  s.ios.deployment_target = '9.3'
  s.swift_version         = '4.2'

  s.default_subspec = "Core"
  
  s.subspec "Core" do |ss|
    ss.source_files  = "Moya-SwiftyJSON/Classes/Core/*"
    ss.dependency "Moya", ">= 12.0.0"
    ss.dependency "SwiftyJSON"
  end
  
  # s.resource_bundles = {
  #   'Moya-SwiftyJSON' => ['Moya-SwiftyJSON/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
