Pod::Spec.new do |s|
  s.name             = 'SubModuleTest'
  s.version          = '1.0.13'
  s.summary          = 'My SubModule Test projects...'

  s.description      = <<-DESC
                       My SubModule Test projects... Just Test.
                       DESC

  s.homepage         = 'https://github.com/showthat/SubModuleTest'
  s.license          = { :type => 'MIT', :text => 'Copyright 2023 by Lee' }
    s.authors          = ['showthat']

  s.source           = {
    :git => 'https://github.com/showthat/SubModuleTest.git',
    :tag => s.version.to_s
  }

  s.platform = :ios, "13.0"

  
  s.dependency = 'SubModuleTestCore'
  s.dependency = 'SubModuleTestGoodBye'
  s.dependency = 'SubModuleTestHello'


end
