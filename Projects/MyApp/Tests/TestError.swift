import Foundation

struct TestError: LocalizedError, Hashable {
  let errorDescription: String?

  init(description: String? = nil) {
    self.errorDescription = description
  }
}
