xcodebuild archive \
  -scheme AdvertisingSdk \
  -sdk iphoneos \
  -archivePath "AdvertisingSdk/archives/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild archive \
  -scheme AdvertisingSdk \
  -sdk iphonesimulator \
  -archivePath "AdvertisingSdk/archives/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
  -framework archives/ios_devices.xcarchive/Products/Library/Frameworks/AdvertisingSdk.framework \
  -framework archives/ios_simulators.xcarchive/Products/Library/Frameworks/AdvertisingSdk.framework \
  -output AdvertisingSdk/AdvertisingSdk.xcframework