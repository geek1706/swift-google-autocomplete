//
//  AutoCompleteTests.swift
//  AutoCompleteTests
//
//  Created by trungnd on 10/3/16.
//  Copyright © 2016 redvn. All rights reserved.
//

import XCTest
@testable import AutoComplete

class AutoCompleteTests: XCTestCase {
    
    var expectation: XCTestExpectation?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAutoComplete() {
        expectation = self.expectation(description: #function)
        
        AutoComplete.getQuerySuggestions("hello") { (results, error) in
            XCTAssertNil(error, "error should be nil")
            XCTAssertNotNil(results, "results should not be nil")
            
            print(results)
            
            self.expectation?.fulfill()
        }
        
        self.waitForExpectations(timeout: 10) { (error) in
            print(error)
        }
    }
    
    func testAutoComplete1() {
        expectation = self.expectation(description: #function)
        
        AutoComplete.getQuerySuggestions("side by side") { (results, error) in
            XCTAssertNil(error, "error should be nil")
            XCTAssertNotNil(results, "results should not be nil")
            
            print(results)
            
            self.expectation?.fulfill()
        }
        
        self.waitForExpectations(timeout: 10) { (error) in
            print(error)
        }
    }
}
