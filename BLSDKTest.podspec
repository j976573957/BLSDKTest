#
#  Be sure to run `pod spec lint BLSDKTest.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "BLSDKTest"
  s.version      = "1.0.0"
  s.summary      = "A short description of BLSDKTest."
  
  s.homepage     = "https://github.com/j976573957/BLSDKTest"
  s.license      = "MIT"
  s.author             = { "j976573957" => "j976573957" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/j976573957/BLSDKTest.git", :tag => "#{s.version}" }

  s.resources = ["BLSDKDemo/BLSDK/HelpDeskUIResource.bundle", "BLSDKDemo/BLSDK/HorderCatcherBoudle.bundle", "BLSDKDemo/BLSDK/MWPhotoBrowser.bundle"]

  s.preserve_paths = "BLSDKDemo/BLSDK/hdlibopencore-amrnb.a", "BLSDKDemo/BLSDK/hdlibopencore-amrwb.a"

  # s.frameworks = "SomeFramework", "AnotherFramework"

  s.libraries = "iconv", "xml2", "bz2", "z", "stdc++", "c++"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "MJRefresh"
  s.dependency "XMLDictionary"
  s.dependency "MBProgressHUD"
  s.dependency "CocoaAsyncSocket"
  s.dependency "SDWebImage/GIF"
  s.dependency "AFNetworking"
  s.dependency "Qiniu"
  s.dependency "FMDB"
  s.dependency "KissXML"
  s.dependency "OpenSSL-Universal"
  s.dependency "Masonry"
  s.dependency "OpenUDID"
  s.dependency "FDStackView"
  s.dependency "FDFullscreenPopGesture"
  s.dependency "MJExtension"
  s.dependency "TXScrollLabelView"

end
