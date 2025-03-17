import XCTest
@testable import SwiftUtils

final class SwiftUtilsTests: XCTestCase {
    func testStringUtils() {
        XCTAssertEqual(StringUtils.reverse("hello"), "olleh")
        XCTAssertTrue(StringUtils.isPalindrome("A man a plan a canal Panama"))
        XCTAssertFalse(StringUtils.isPalindrome("hello"))
    }
    
    func testArrayUtils() {
        let result = ArrayUtils.removeDuplicates([1, 2, 2, 3, 3, 4])
        XCTAssertEqual(result.sorted(), [1, 2, 3, 4])
        XCTAssertEqual(ArrayUtils.sum([1, 2, 3, 4, 5]), 15)
    }
    
    func testMathUtils() {
        XCTAssertEqual(MathUtils.factorial(5), 120)
        XCTAssertTrue(MathUtils.isPrime(17))
        XCTAssertFalse(MathUtils.isPrime(4))
    }
}
