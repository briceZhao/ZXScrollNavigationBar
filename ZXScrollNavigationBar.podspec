
Pod::Spec.new do |s|

  s.name         = "ZXScrollNavigationBar"
  s.version      = "0.0.1"
  s.summary      = "A category of UIViewController."
  s.description  = <<-DESC
	This is a demo about navigationBar, which implement by objective-C.
                   DESC

  s.homepage     = "https://github.com/briceZhao/ZXScrollNavigationBar"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  s.author             = { "briceZhao" => "zx_brice@126.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/briceZhao/ZXScrollNavigationBar.git", :tag => "#{s.version}" }
  s.source_files  = "ZXScrollNavigationBar/*"
  s.requires_arc = true 
  s.framework  = "UIKit"

  # s.public_header_files = "Classes/**/*.h"

  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
