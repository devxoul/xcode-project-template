import UIKit

UIApplicationMain(
  CommandLine.argc,
  CommandLine.unsafeArgv,
  NSStringFromClass(UIApplication.self),
  NSStringFromClass(NSClassFromString("MyAppTest.TestAppDelegate") ?? AppDelegate.self)
)
