Pod::Spec.new do |s|
  s.name         = "JsonObject"
  s.version      = "0.1.0"
  s.summary      = "Magical Swift JSON Modeling Framework"
  s.description  = <<-DESC
                   Working with JSON in Swift can be a pain.
                   But it doesn't have to be.
                   JsonObject makes initializing your Swift class from a JSON dictionary a breeze and lets you easily serialize it back!
                   DESC
  s.homepage     = "https://github.com/Skyvive/JsonObject"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Brad Hilton" => "brad.hilton.nw@gmail.com" }
  s.source       = { :git => "https://github.com/Skyvive/JsonObject.git", :tag => "0.1.0" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

  s.source_files  = "JsonObject", "JsonObject/**/*.{swift,h,m}"
  s.requires_arc = true
end
