import XCTest
@testable import Calculator

extension OtherCalculatorTests {
    static var allTests : [(String, (OtherCalculatorTests) -> () throws -> Void)] {
        return [
            ("testSubWorksWithNegativeResult", testSubWorksWithNegativeResult),
            ("testMulByZeroCheck", testMulByZeroCheck),
            ("testMulNotEqual", testMulNotEqual),
            ("testMulLessThan", testMulLessThan),
            ("testMulGreaterThan", testMulGreaterThan),
            ("testMulParams", testMulParams),
            ("testDivByZeroCheck", testDivByZeroCheck)
        ]
    }
}
    
class OtherCalculatorTests: XCTestCase {

  var otherCalc : Calculator!
  
  override func setUp() {
    super.setUp()
    otherCalc = Calculator()
  }
  
  override func tearDown() {
    otherCalc = nil
  }
  
  func testSubWorksWithNegativeResult() {
    XCTAssertEqual(otherCalc.sub(1,3),-2)
  }
  
  func testMulByZeroCheck() {
    XCTAssertEqual(otherCalc.mul(2,0),0)
  }

  func testMulNotEqual() {
    XCTAssertNotEqual(otherCalc.mul(2,2),5)
  }

  func testMulLessThan() {
    XCTAssertLessThan(otherCalc.mul(2,2),5)
  }

  func testMulGreaterThan() {
    XCTAssertGreaterThan(otherCalc.mul(2,3),5)
  }
  
  func testMulParams() {
     let cases = [(4,3,12), (2,4,8), (3,5,15), (4,6,24)]
     cases.forEach {
        XCTAssertEqual(otherCalc.mul($0, $1), $2)
     }
  }
 
  func testDivByZeroCheck() {
    XCTAssertEqual(otherCalc.div(12,0),9999)
  }  

}