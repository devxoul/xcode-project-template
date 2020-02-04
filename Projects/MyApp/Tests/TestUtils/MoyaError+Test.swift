import Moya

extension MoyaError {
  init(statusCode: Int) {
    let response = Response(statusCode: statusCode, data: Data())
    self = .statusCode(response)
  }
}
