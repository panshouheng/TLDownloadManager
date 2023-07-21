#
# Be sure to run `pod lib lint TLDownloadManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TLDownloadManager'
  s.version          = '0.0.1'
  s.summary          = '断点下载工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  "断点下载工具开发"
                       DESC

  s.homepage         = 'https://github.com/panshouheng/TLDownloadManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'panshouheng' => 'shouheng.pan@tineco.com' }
  s.source           = { :git => 'https://github.com/panshouheng/TLDownloadManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'TLDownloadManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TLDownloadManager' => ['TLDownloadManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'AFNetworking'
   s.dependency 'SSZipArchive'
#   s.dependency 'YYCache'
end
