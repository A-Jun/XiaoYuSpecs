#
# Be sure to run `pod lib lint RJBluetooth.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RJBluetooth'
  s.version          = '0.2.2'
  s.summary          = '修改中心管理器开启队列后数据混乱问题，原因是characteristic 一直在变化 而类 是引用类型 所以在又别的队列同步到主队列时，代码块在等待，但是characteristic的值却在变化，导致后面的值混乱，再用copy方法重新复制一份数据'
  s.swift_version    = '4.1'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  中心蓝牙设备组件
                       DESC

  s.homepage         = 'https://github.com/A-Jun/RJBluetooth'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'A-Jun' => '841348093@qq.com' }
  s.source           = { :git => 'https://github.com/A-Jun/RJBluetooth.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RJBluetooth/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RJBluetooth' => ['RJBluetooth/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CTMediator'
end
