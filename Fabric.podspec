Pod::Spec.new do |s|
  s.name         = "Fabric"
  s.version      = "0.0.1"
  s.summary      = "A quick test of a private cocoapod for Crashlytics and Fabric"
  s.author       = 'Fabric' 
  s.homepage     = "https://github.com/sleepio/cocoapods-fabric.git"
  s.platform     = :ios, "7.0"
   s.license      = { 
    :type => 'Copyright',
    :file => 'LICENSE' # Copied from http://try.crashlytics.com/terms/terms-of-service.pdf
  }
  s.source       = { :git => "https://github.com/sleepio/cocoapods-fabric.git", :tag => "0.0.1" }
  s.source_files  = "*.framework/Versions/A/Headers/*.h"
  s.preserve_paths = "*.framework"
  s.ios.vendored_frameworks = 'Crashlytics.framework', 'Fabric.framework'
  s.public_header_files = "Crashlytics.framework/Headers/*.h", "Fabric.framework/Headers/*.h"
  s.requires_arc = true
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
end
