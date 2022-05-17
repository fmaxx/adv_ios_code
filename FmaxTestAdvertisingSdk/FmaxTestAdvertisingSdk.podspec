Pod::Spec.new do |s|  
    s.name              = 'FmaxTestAdvertisingSdk'
    s.version           = '0.0.4'
    s.summary           = 'A really cool SDK that logs stuff.'
    s.homepage          = 'http://example.com/'

    s.author            = { 'Maxim Firsov' => 'firsoffmaxim@gmail.com' }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/fmaxx/adv_ios_release.git', :tag => '0.0.4' }

    s.swift_version = "5"
    s.ios.deployment_target  = '12.0'
    s.ios.vendored_frameworks = 'FmaxTestAdvertisingSdk.xcframework'
end