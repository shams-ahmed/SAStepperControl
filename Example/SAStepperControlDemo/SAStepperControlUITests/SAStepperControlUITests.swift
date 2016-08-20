//
//  SAStepperControlUITests.swift
//  SAStepperControlUITests
//
//  Created by shams ahmed on 21/08/2016.
//  Copyright © 2016 SA. All rights reserved.
//

import XCTest

class SAStepperControlUITests: XCTestCase {
    
    // MARK:
    // MARK: Setup
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // MARK:
    // MARK: Test
    
    func test() {
        let steppersQuery = XCUIApplication().steppers
        let incrementButton = steppersQuery.buttons["Increment"]
        incrementButton.tap()
        incrementButton.tap()
        incrementButton.tap()
        
        let decrementButton = steppersQuery.buttons["Decrement"]
        decrementButton.tap()
        decrementButton.tap()
        decrementButton.tap()
        incrementButton.tap()
        incrementButton.tap()
        decrementButton.tap()
        decrementButton.tap()
        decrementButton.tap()
        decrementButton.tap()
    }
}
