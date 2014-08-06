Pod::Spec.new do |s|
  s.name     = 'SMS-SDK'
  s.version  = '1.0.3'
  s.summary  = 'SMS-SDK is a SMS verifying kit.'
  s.homepage = 'https://github.com/jcccn/SMS-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright © 2012-2014 mob All Rights Reserved 掌淘网络 版权所有
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/SMS-SDK-iOS.git', :tag => '1.0.3' }
  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.default_subspec = 'UI'

  ### Subspecs

  s.subspec 'Core' do |cs|
    cs.requires_arc = true
    cs.frameworks = 'UIKit', 'CoreGraphics', 'Foundation', 'MessageUI'
    cs.libraries  = 'icucore', 'z'
    cs.vendored_frameworks = 'SMS-SDK/SMS_SDK.framework'
  end

  s.subspec 'UI' do |uis|
    uis.requires_arc = true
    uis.dependency 'SMS-SDK/Core'
    uis.frameworks = 'UIKit', 'CoreGraphics', 'Foundation', 'AddressBookUI', 'AddressBook', 'MessageUI'
    uis.source_files = "SMS-SDK/SMS_UILib/*.{h,m}", "SMS-SDK/UI/*.{h,m}"
    uis.resources = 'SMS-SDK/UI/smssdk.bundle'
  end

end
