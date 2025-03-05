Pod::Spec.new do |s|
  s.name             = 'SubModuleTest'
  s.version          = '1.0.8'
  s.summary          = 'My SubModule Test projects...'

  s.description      = <<-DESC
                       My SubModule Test projects... Just Test.
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


  s.subspec 'Core' do |sc|
      sc.vendored_frameworks = "Sources/TestMainFramework.xcframework"
  end


  s.subspec 'Hello' do |sh|
      sh.vendored_frameworks = "Sources/TestPrintHelloFramework.xcframework"
  end


  s.subspec 'GoodBye' do |sgb|
      sgb.vendored_frameworks = "Sources/TestPrintGoodbyeFramework.xcframework"
      
      sgb.dependency 'Alamofire', '5.4'
      sgb.xcconfig = { 'OTHER_LDFLAGS' => '-framework Alamofire' }                  # 서브 스펙 의존성 추가..
  end


  s.subspec 'Basic' do |sb|
      sb.dependency 'SubModuleTest/Core'
      sb.dependency 'SubModuleTest/Hello'
      sb.dependency 'SubModuleTest/GoodBye'
  end

end
