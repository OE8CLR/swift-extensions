Pod::Spec.new do |s|
  s.name             = 'swift-extensions'
  s.version          = '0.1'
  s.summary          = 'Useful swift extensions'

  s.homepage         = 'https://github.com/OE8CLR/swift-extensions'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Christoph Lückler' => 'oe8clr@me.net' }
  s.source           = { :git => 'ssh://git@github.com:OE8CLR/swift-extensions.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  
  s.source_files = 'Source/*.swift'
end
