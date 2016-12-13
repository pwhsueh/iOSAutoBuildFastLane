//
//  iOSAutoBuildFastLaneTests.swift
//  iOSAutoBuildFastLaneTests
//
//  Created by Powen Hsueh on 13/12/2016.
//  Copyright © 2016 Bowen. All rights reserved.
//

import XCTest
@testable import iOSAutoBuildFastLane

class iOSAutoBuildFastLaneTests: XCTestCase {
    
    var numberOperationUtility : NumberOperationUtility?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        numberOperationUtility = NumberOperationUtility()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddition() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let additionResult = numberOperationUtility?.addTwoNumbers(firstNumber: 100, secondNumber: 200)
        XCTAssertTrue(additionResult==300,"Addition Test Failed");
    }
    
    func testMultiplication() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let multiplicationResult = numberOperationUtility?.multiplyTwoNumbers(firstNumber: 100, secondNumber: 200)
        XCTAssertTrue(multiplicationResult==20000,"Multiplication Test Failed");
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
