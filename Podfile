platform :ios, '13.0'

inhibit_all_warnings!
use_frameworks!

target 'MyApp' do
  pod 'ReactorKit'
  pod 'Texture',
    :git => 'https://github.com/TextureGroup/Texture.git',
    :branch => 'releases/p7.37'

  # DI
  pod 'Pure'
  pod 'Pure/Stub'  # https://github.com/CocoaPods/CocoaPods/issues/7195
  pod 'Swinject'
  pod 'SwinjectAutoregistration'

  # Networking
  pod 'Moya', '14.0.0-beta.6'
  pod 'Moya/RxSwift', '14.0.0-beta.6'
  pod 'MoyaSugar', '1.3.2'
  pod 'MoyaSugar/RxSwift', '1.3.2'

  # Rx
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'RxCocoa-Texture'
  pod 'RxRelay'
  pod 'RxDataSources'
  pod 'RxDataSources-Texture'
  pod 'RxOptional'
  pod 'RxCodable'
  pod 'RxViewController'
  pod 'RxKeyboard'

  # UI
  pod 'BonMot'
  pod 'SwiftyColor'
  pod 'SwiftyImage'

  # Misc.
  pod 'URLNavigator'
  pod 'SwiftLint'

  target 'MyAppTests' do
    inherit! :search_paths
  end
end

target 'Base' do
  pod 'Then'
  pod 'CGFloatLiteral'
end

target 'Logging' do
  pod 'CocoaLumberjack/Swift'
end

target 'Testing' do
  pod 'Quick'
  pod 'Nimble'
  pod 'Stubber'
end
