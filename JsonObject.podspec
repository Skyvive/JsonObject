Pod::Spec.new do |s|

  s.name = "JsonObject"
  s.version = "0.1.0"
  s.summary = "Magical Swift JSON Modeling Framework"
  s.description  = <<-DESC
Working with JSON in Swift can be a pain. But it doesn't have to be. JsonObject makes initializing your Swift class from a JSON dictionary a breeze and let's you easily serialize it back!
                   DESC
  s.homepage = "https://github.com/Skyvive/JsonObject"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { “Brad Hilton“ => "brad.hilton.nw@gmail.com" }
  s.ios.deployment_target = “8.3”
  s.osx.deployment_target = "10.9”
  s.source = { :git => "https://github.com/Skyvive/JsonObject.git”, :tag => "0.0.1" }
  s.source_files = “JsonObject”, “JsonObject/**/*.{swift,h,m}”
  s.requires_arc = true

end
