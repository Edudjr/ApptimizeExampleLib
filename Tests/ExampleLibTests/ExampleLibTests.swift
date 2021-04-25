import XCTest
@testable import ExampleLib

final class ExampleLibTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        ExampleLib().doSomething(param: "hello")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
