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
  s.requires_arc = true
  s.default_subspec = "Core"
  
  s.subspec "Core" do |core|
    core.vendored_frameworks = "Fabric.framework"
    core.public_header_files = "Fabric.framework/Headers/*.h"
  end
  
  s.subspec "Crashlytics" do |crashlytics|
    crashlytics.vendored_frameworks = "Crashlytics.framework"
    crashlytics.public_header_files = "Crashlytics.framework/Headers/*.h"
  end

end
