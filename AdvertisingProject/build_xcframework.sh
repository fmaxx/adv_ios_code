#!/bin/bash
set -e

# variables, paths
ROOT=AdvertisingSdk
OUTPUT=$ROOT/output
ARCHIVES=$OUTPUT/archives
SCHEME=AdvertisingSdk

# don't worry if the folder is empty
rm -R $OUTPUT || true

# build artifacts
xcodebuild archive \
  -scheme $SCHEME \
  -sdk iphoneos \
  -archivePath "$ARCHIVES/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild archive \
  -scheme $SCHEME \
  -sdk iphonesimulator \
  -archivePath "$ARCHIVES/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
  -framework $ARCHIVES/ios_devices.xcarchive/Products/Library/Frameworks/$SCHEME.framework \
  -framework $ARCHIVES/ios_simulators.xcarchive/Products/Library/Frameworks/$SCHEME.framework \
  -output $OUTPUT/AdvertisingSdk.xcframework

echo "XBuild [OK]"

# create the output ZIP file
cp $ROOT/LICENSE $OUTPUT/LICENSE 
cd $OUTPUT

zip -r \
$SCHEME.zip \
LICENSE \
$SCHEME.xcframework 

echo "Zip [OK]"