import XCTest
@testable import engine_extensions

final class engine_extensionsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(engine_extensions().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
