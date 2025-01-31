require 'json'
pkg = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name             = "react-native-payments"
  s.version          = pkg["version"]
  s.summary          = pkg["description"]
  s.requires_arc     = true
  s.license          = pkg["license"]
  s.homepage         = pkg["homepage"]
  s.author           = pkg["author"]
  s.source           = { :git => pkg["repository"]["url"] }
  s.source_files     = 'ios/**/*.{h,m}'
  s.platform         = :ios, "8.0"
  s.requires_arc     = true

  s.dependency 'React'
  s.dependency 'Stripe', '~> 19'
end
