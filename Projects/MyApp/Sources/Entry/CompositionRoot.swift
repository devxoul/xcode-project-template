import Pure
import Swinject
import SwinjectAutoregistration
import URLNavigator

struct AppDependency {
  let window: UIWindow
}

extension AppDependency {
  private static let container = Container()

  static func resolve() -> AppDependency {
    self.container.autoregister(AppDependency.self, initializer: AppDependency.init)
    return self.container.resolve(AppDependency.self)!
  }
}


// MARK: Swinject+FactoryModule

private extension AppDependency {
  private static func register<Module, Arg1>(_ module: Module.Type, dependency: @escaping (Arg1) -> Module.Dependency) where Module: FactoryModule {
    if Arg1.self == Void.self {
      self.container.register(Void.self) { _ in Void() }
    }
    self.container.autoregister(Module.Dependency.self, initializer: dependency)
    self._register(module)
  }

  private static func register<Module, Arg1, Arg2>(_ module: Module.Type, dependency: @escaping ((Arg1, Arg2)) -> Module.Dependency) where Module: FactoryModule {
    self.container.autoregister(Module.Dependency.self, initializer: dependency)
    self._register(module)
  }

  private static func register<Module, Arg1, Arg2, Arg3>(_ module: Module.Type, dependency: @escaping ((Arg1, Arg2, Arg3)) -> Module.Dependency) where Module: FactoryModule {
    self.container.autoregister(Module.Dependency.self, initializer: dependency)
    self._register(module)
  }

  private static func register<Module, Arg1, Arg2, Arg3, Arg4>(_ module: Module.Type, dependency: @escaping ((Arg1, Arg2, Arg3, Arg4)) -> Module.Dependency) where Module: FactoryModule {
    self.container.autoregister(Module.Dependency.self, initializer: dependency)
    self._register(module)
  }

  private static func register<Module, Arg1, Arg2, Arg3, Arg4, Arg5>(_ module: Module.Type, dependency: @escaping ((Arg1, Arg2, Arg3, Arg4, Arg5)) -> Module.Dependency) where Module: FactoryModule {
    self.container.autoregister(Module.Dependency.self, initializer: dependency)
    self._register(module)
  }

  private static func _register<Module>(_ module: Module.Type) where Module: FactoryModule {
    self.container.register((() -> Module.Dependency).self) { r in
      // If the dependency is resolved lazily, the container cannot verify missing dependencies.
      // But it can cause overhead so we need to find a better solution in the future.
      let dependency = r.resolve(Module.Dependency.self)!
      return { dependency }
    }
    self.container.autoregister(Factory<Module>.self, initializer: Factory<Module>.init)
  }
}
