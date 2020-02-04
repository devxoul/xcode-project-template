import MoyaSugar
import Stubber
import RxSwift
@testable import MyApp

final class NetworkingStub: NetworkingProtocol {
  func request(_ target: SugarTargetType, file: StaticString, function: StaticString, line: UInt) -> Single<Response> {
    return Stubber.invoke(request, args: (target, file, function, line), default: .error(TestError()))
  }
}
