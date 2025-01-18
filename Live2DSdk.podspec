Pod::Spec.new do |s|
  s.name             = 'Live2DSdk'
  s.version          = '1.0.0'
  s.summary          = 'Live2D iOS SDK'

  s.homepage         = 'https://github.com/xiaoyvyv/live2d-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xiaoyvyv' => 'wanghuaiyv@gmail.com' }
  s.source           = { :git => 'https://github.com/xiaoyvyv/live2d-sdk-ios.git' }
  s.social_media_url = 'https://github.com/xiaoyvyv'

  s.ios.deployment_target = '12.0'
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

  s.frameworks = 'GLKit', 'OpenGLES'
end
