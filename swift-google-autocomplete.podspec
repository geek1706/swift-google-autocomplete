#
# Be sure to run `pod lib lint swift-google-autocomplete.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'swift-google-autocomplete'
  s.version          = '1.0.0'
  s.summary          = 'Fetch google autocomplete suggestions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Fetch google's autocomplete suggestions.
                       DESC

  s.homepage         = 'https://github.com/geek1706/swift-google-autocomplete'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Trung Nguyen' => 'trung1706@gmail.com' }
  s.source           = { :git => 'https://github.com/geek1706/swift-google-autocomplete.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/geek1706'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AutoComplete/*.swift'
  
end
