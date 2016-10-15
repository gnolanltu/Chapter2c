import XCTest
@testable import Calculator

extension SimpleCalculatorTests {
    static var allTests : [(String, (SimpleCalculatorTests) -> () throws -> Void)] {
        return [
            ("testAddTwoNumbersCheck", testAddTwoNumbersCheck),
            ("testSubTwoNumbersCheck", testSubTwoNumbersCheck),
            ("testMulTwoNumbersCheck", testMulTwoNumbersCheck),            
            ("testDivTwoNumbersCheck", testDivTwoNumbersCheck)
        ]
    }
}
    
class SimpleCalculatorTests: XCTestCase {

  var simpleCalc : Calculator!
  
  override func setUp() {
    super.setUp()
    simpleCalc = Calculator()
  }
  
  override func tearDown() {
    simpleCalc = nil
  }
  
  func testAddTwoNumbersCheck() {
    XCTAssertEqual(simpleCalc.add(1,1),2)
  }

  func testSubTwoNumbersCheck() {
    XCTAssertEqual(simpleCalc.sub(3,1),2)
  }
    
  func testMulTwoNumbersCheck() {
    XCTAssertEqual(simpleCalc.mul(2,3),6)
  }

  func testDivTwoNumbersCheck() {
    XCTAssertEqual(simpleCalc.div(12,2),6)
  }

}