//
//  ContinuousTests.swift
//  ContinuousTests
//
//  Created by Daniel Bonates on 1/12/16.
//  Copyright © 2016 Daniel Bonates. All rights reserved.
//

import XCTest
@testable import Continuous

class ContinuousTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssertTrue(true)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testListShouldGrow() {
        
        let list = MasterViewController()
        
        //let currentListItensTotal = list.tableView.numberOfRowsInSection(0)
        
        let currentListItensTotal = list.objects.count
        
        list.insertNewObject()
        
        let currentListItensNewTotal = list.objects.count
        
        XCTAssertGreaterThan(currentListItensNewTotal,currentListItensTotal)
    }
    
}
