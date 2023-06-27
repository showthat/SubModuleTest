Pod::Spec.new do |s|
  s.name             = 'SubModuleTest'
  s.version          = '1.0.3'
  s.summary          = 'My SubModule Test projects...'

  s.description      = <<-DESC
                       My SubModule Test projects...
                       DESC

  s.homepage         = 'https://github.com/showthat/SubModuleTest'
  s.license          = { :type => 'MIT', :text => 'Copyright 2023 by Lee' }
  s.authors          = 'showthat'

  s.source           = {
    :git => 'https://github.com/showthat/SubModuleTest.git',
    :tag => s.version.to_s,
    :submodules => true
  }

  s.platform = :ios, "13.0"



  s.subspec 'Core' do |ss|
    ss.vendored_frameworks = "TestMainFramework.xcframework"
    
    ss.pod_target_xcconfig = { 'EXCLUDED_ARCHS[ sdk=iphonesimulator* ]' => 'arm64'}
    ss.user_target_xcconfig = { 'EXCLUDED_ARCHS[ sdk=iphonesimulator* ]' => 'arm64'}

  end


  s.subspec 'Hello' do |ss|
    ss.vendored_frameworks = "TestPrintHelloFramework.xcframework"
    
    ss.pod_target_xcconfig = { 'EXCLUDED_ARCHS[ sdk=iphonesimulator* ]' => 'arm64'}
    ss.user_target_xcconfig = { 'EXCLUDED_ARCHS[ sdk=iphonesimulator* ]' => 'arm64'}
    
  end


  s.subspec 'GoodBye' do |ss|
    ss.vendored_frameworks = "TestPrintGoodbyeFramework.xcframework"
    
    ss.pod_target_xcconfig = { 'EXCLUDED_ARCHS[ sdk=iphonesimulator* ]' => 'arm64'}
    ss.user_target_xcconfig = { 'EXCLUDED_ARCHS[ sdk=iphonesimulator* ]' => 'arm64'}

    ss.dependency 'Alamofire'
  end


  s.subspec 'Basic' do |ss|
    ss.dependency 'SubModuleTest/Core'
    ss.dependency 'SubModuleTest/Hello'
    ss.dependency 'SubModuleTest/GoodBye'
  end

end
