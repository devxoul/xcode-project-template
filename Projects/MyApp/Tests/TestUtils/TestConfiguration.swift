import Quick
import Stubber

class TestConfiguration: QuickConfiguration {
  override class func configure(_ configuration: Configuration) {
    configuration.beforeEach {
      Stubber.clear()
    }
  }
}
