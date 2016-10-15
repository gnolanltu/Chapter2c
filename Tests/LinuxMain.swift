import XCTest
@testable import CalculatorTests

XCTMain([
    testCase(SimpleCalculatorTests.allTests),
    testCase(OtherCalculatorTests.allTests)
])
