Pod::Spec.new do |s|
  s.name         = "Fabric"
  s.version      = "0.0.2"
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
  s.default_subspec = "Default"

  s.subspec "Default" do |default|
    default.vendored_frameworks = "Fabric.framework"
    default.public_header_files = "Fabric.framework/Headers/*.h"
  end

  s.subspec "Crashlytics" do |crashlytics|
    crashlytics.vendored_frameworks = "Crashlytics.framework"
    crashlytics.public_header_files = "Crashlytics.framework/Headers/*.h"
  end
end
