Pod::Spec.new do |s|
    s.name              = 'FmaxTestAdvertisingSdk'
    s.version           = '0.0.9'
    s.summary           = 'A really cool SDK that logs stuff.'
    s.homepage          = 'http://example.com/'

    s.author            = { 'Maxim Firsov' => 'firsoffmaxim@gmail.com' }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/fmaxx/adv_ios_release.git', :tag => '0.0.9' }
    s.source_files = 'FmaxTestAdvertisingSdk/Classes/**/*'
    s.swift_version = ['5.3', '5.4', '5.5']
#   s.swift_version = '5'
    s.ios.deployment_target  = '14.0'
    s.ios.vendored_frameworks = 'FmaxTestAdvertisingSdk.xcframework'
    s.dependency 'Alamofire'
    s.dependency 'Kingfisher'
end
