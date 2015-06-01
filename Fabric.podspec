Pod::Spec.new do |s|
  s.name         = "Fabric"
  s.version      = "0.0.1"
  s.summary      = "Cocoapod for Crashlytics and Fabric to allow install via pod install"
  s.author       = 'Fabric' 
  s.homepage     = "https://github.com/sleepio/cocoapods-fabric.git"
  s.platform     = :ios, "7.0"
  s.license      = { 
    :type => 'Copyright',
    :file => 'LICENSE' # Copied from http://try.crashlytics.com/terms/terms-of-service.pdf
  }
  s.source       = { :git => "https://github.com/sleepio/cocoapods-fabric.git", :tag => "0.0.1" }
  s.requires_arc = true
  s.ios.vendored_frameworks = 'Crashlytics.framework', 'Fabric.framework'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
  
end
