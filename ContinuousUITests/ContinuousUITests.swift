//
//  ContinuousUITests.swift
//  ContinuousUITests
//
//  Created by Daniel Bonates on 1/12/16.
//  Copyright © 2016 Daniel Bonates. All rights reserved.
//

import XCTest
@testable import Continuous

class ContinuousUITests: XCTestCase {
        
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
    
    func testAddItensOnTableview() {

        
        
        let app = XCUIApplication()
        let addButton = app.navigationBars["Master"].buttons["Add"]
        addButton.tap()
        addButton.tap()
        addButton.tap()
        addButton.tap()
        addButton.tap()
        XCTAssertGreaterThan(app.tables.staticTexts.count, 0)
      

        
        
    }
    
}
