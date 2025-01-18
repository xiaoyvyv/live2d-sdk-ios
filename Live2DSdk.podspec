#
# Be sure to run `pod lib lint Live2DSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Live2DSdk'
  s.version          = '1.0.0'
  s.summary          = 'Live2D iOS SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

#   s.description      = <<-DESC
# TODO: Add long description of the pod here.
#                        DESC

  s.homepage         = 'https://github.com/xiaoyvyv/live2d-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xiaoyvyv' => 'wanghuaiyv@gmail.com' }
  s.source           = { :git => 'https://github.com/xiaoyvyv/live2d-sdk-ios.git' }
  s.social_media_url = 'https://github.com/xiaoyvyv'

  s.ios.deployment_target = '12.0'

# Release-iphonesos
# Release-iphonesimulator
#   s.subspec 'Core' do |sp|
#     sp.ios.vendored_library = 'Live2DSdk/Live2D/Core/lib/ios/Release-iphonesimulator/libLive2DCubismCore.a'
#   end
#
#   s.subspec 'Live2DSdk' do |sp|
#     sp.public_header_files = 'Live2DSdk/Live2D/Framework/**/*.{h,hpp}'
#     sp.source_files = 'Live2DSdk/Live2D/Framework/src/**/*.{h,hpp,c,cpp,m,mm}'
# #     sp.requires_arc = false
#     sp.libraries = 'c++'
#     sp.frameworks = 'GLKit', 'OpenGLES'
#   end
#
#   s.subspec 'Live2DSdk' do |sp|
#     sp.public_header_files = 'Live2DSdk/Classes/**/*.{h,hpp}'
#     sp.source_files = 'Live2DSdk/Classes/**/*.{h,hpp,c,cpp,m,mm}'
#     sp.libraries = 'c++'
#   end

  s.source_files = 'Live2DSdk/Classes/**/*.{h,hpp,c,cpp,m,mm}', 'Live2DSdk/Core/**/*.{h,hpp,c,cpp,m,mm}'
  s.public_header_files = 'Live2DSdk/Classes/**/*.{h,hpp}', 'Live2DSdk/Core/include/Live2DCubismCore.h'
  s.header_mappings_dir = "Live2DSdk/Classes"
  s.ios.vendored_library = 'Live2DSdk/Core/lib/ios/Release/libLive2DCubismCore.a'

  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(PODS_CONFIGURATION_BUILD_DIR)/Live2DSdk/Live2DSdk.framework/Core/include',
    'GCC_PREPROCESSOR_DEFINITIONS' => 'L2D_TARGET_IPHONE',
    'ENABLE_BITCODE' => 'NO'
  }

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/Live2DSdk/Classes $(PODS_TARGET_SRCROOT)/Live2DSdk/Classe/Type $(PODS_TARGET_SRCROOT)/Live2DSdk/Live2D/Core/include',
    'OTHER_CFLAGS' => '-DCSM_TARGET_IPHONE_ES2',
    'OTHER_LINK_FLAGS' => '-lLive2DCubismCore',
    'SWIFT_OPTIMIZATION_LEVEL' => '-Onone'
  }

#   s.libraries = 'c++'
  s.frameworks = 'GLKit', 'OpenGLES'
end
