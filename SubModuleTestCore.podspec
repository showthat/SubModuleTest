Pod::Spec.new do |s|
  s.name             = 'SubModuleTestCore'
  s.version          = '1.0.13'
  s.summary          = 'My SubModule Test projects...'

  s.description      = <<-DESC
                       My SubModule Test projects... Just Test.
                       DESC

  s.homepage         = 'https://github.com/showthat/SubModuleTest'
  s.license          = { :type => 'MIT', :text => 'Copyright 2023 by Lee' }
  s.authors          = 'showthat'

  s.source           = {
    :git => 'https://github.com/showthat/SubModuleTest.git',
    :tag => s.version.to_s
  }

  s.platform = :ios, "13.0"

  # 다이나믹 프레임워크로 내보낼 때 필요한 설정
  s.static_framework = false  # 다이나믹 라이브러리로 내보내는 경우
  s.vendored_frameworks = "Sources/TestMainFramework.xcframework"


end
