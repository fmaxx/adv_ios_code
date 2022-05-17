# adv_ios_code
adv_ios_code

Сбока библиотеки

Публикация библиотеки
pod spec lint --allow-warnings

// если не было регистрации
pod trunk register <EMAIL>@gmail.com 'NAME' // из podspec
pod trunk push FmaxTestAdvertisingSdk.podspec --allow-warnings

// после публикации либы в CocoaPods, версия недоступна сразу
// удалить лок файл и переустановить зависимости (должна быть зеленая строчка с версией нашей либы)
rm -rf Pods/ Podfile.lock ; pod install
