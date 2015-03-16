Pod::Spec.new do |s|

  s.name = "JsonObject"
  s.version = "0.0.1"
  s.summary = "A short description of JsonObject."
  s.description  = <<-DESC
                   A longer description of JsonObject in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
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
