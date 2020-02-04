import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

  private let dependency: AppDependency

  private override init() {
    self.dependency = AppDependency.resolve()
    super.init()
  }

  init(dependency: AppDependency) {
    self.dependency = dependency
  }

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = self.dependency.window
    window.frame = UIScreen.main.bounds
    window.backgroundColor = .black
    window.rootViewController = self.createSplashViewController()
    window.makeKeyAndVisible()
    self.window = window
    return true
  }

  private func createSplashViewController() -> UIViewController {
    return UIViewController()
  }
}
