Pod::Spec.new do |s|
  s.name             = 'SubModuleTest'
  s.version          = '1.0.5'
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
    ss.vendored_frameworks = "Sources/TestMainFramework.xcframework"
  end


  s.subspec 'Hello' do |ss|
    ss.vendored_frameworks = "Sources/TestPrintHelloFramework.xcframework"
  end


  s.subspec 'GoodBye' do |ss|
    ss.vendored_frameworks = "Sources/TestPrintGoodbyeFramework.xcframework"
    
    ss.dependency 'Alamofire'
  end


  s.subspec 'Basic' do |ss|
    ss.dependency 'SubModuleTest/Core'
    ss.dependency 'SubModuleTest/Hello'
    ss.dependency 'SubModuleTest/GoodBye'
  end

end
