import Alamofire
import Moya

extension Swift.Error {
  var httpStatusCode: Int? {
    return (self as? MoyaError)?.response?.statusCode
  }
}
