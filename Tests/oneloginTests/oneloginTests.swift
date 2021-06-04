import XCTest
import class Foundation.Bundle

@testable import Calc


final class oneloginTests: XCTestCase
{
    func testMixedFraction() throws
    {
        let c = Calc("3_1/2")
        XCTAssertEqual(c.answer(), "3_1/2")
    }
    
    func testFraction() throws
    {
        let c = Calc("5/8")
        XCTAssertEqual(c.answer(), "5/8")
    }

    func testSimpleAdd() throws
    {
        let c = Calc("1/2 + 1/2")
        XCTAssertEqual(c.answer(), "1")
    }
    
    func testSimpleSubtract() throws
    {
        let c = Calc("1/2 - 1/2")
        XCTAssertEqual(c.answer(), "0")
    }
    
    func testSimpleMultiply() throws
    {
        let c = Calc("1/2 * 1/2")
        XCTAssertEqual(c.answer(), "1/4")
    }
    
    func testSimpleDivide() throws
    {
        let c = Calc("1/2 / 1/2")
        XCTAssertEqual(c.answer(), "1")
    }
    
    func testEquation1() throws
    {
        let c = Calc("1/2 * 3_3/4")
        XCTAssertEqual(c.answer(), "1_7/8")
    }
    
    func testEquation2() throws
    {
        let c = Calc("2_3/8 + 9/8")
        XCTAssertEqual(c.answer(), "3_1/2")
    }
    
    func testEquation3() throws
    {
        let c = Calc("2_3/8 + 9/8 + 3/4")
        XCTAssertEqual(c.answer(), "4_1/4")
    }
    
    func testEquation4() throws
    {
        let c = Calc("3/8 + 1/4 / 9/8 + 3/4 + 2/3")
        XCTAssertEqual(c.answer(), "2_1/72")
    }
    
    func testValid() throws
    {
        let c = Calc("3/8 + 3/8 -")
        XCTAssertFalse(c.isValid())
        
        let d = Calc("3/8 + 3/8 - 4/5")
        XCTAssertTrue(d.isValid())
    }
    
}
