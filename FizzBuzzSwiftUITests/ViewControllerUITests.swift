//
//  ViewControllerUITests.swift
//  FizzBuzzSwift
//
//  Created by Mali McCalla on 06/09/2016.
//  Copyright © 2016 Mali McCalla. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
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

    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsScoreByTwo() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsScoreToThree() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        app.buttons["numberButton"].tap()
        app.buttons["numberButton"].tap()
        app.buttons["fizzButton"].tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsScoreToFive() {

        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        app.buttons["numberButton"].tap()
        app.buttons["numberButton"].tap()
        app.buttons["fizzButton"].tap()
        app.buttons["numberButton"].tap()
        app.buttons["buzzButton"].tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
        
        
    }
    
    func testTapFizzBuzzButtonIncrementsScoreToFifteen() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        app.buttons["numberButton"].tap()
        app.buttons["numberButton"].tap()
        
        let fizzbuttonButton = app.buttons["fizzButton"]
        fizzbuttonButton.tap()
        app.buttons["numberButton"].tap()
        
        let buzzbuttonButton = app.buttons["buzzButton"]
        buzzbuttonButton.tap()
        fizzbuttonButton.tap()
        app.buttons["numberButton"].tap()
        app.buttons["numberButton"].tap()
        fizzbuttonButton.tap()
        buzzbuttonButton.tap()
        app.buttons["numberButton"].tap()
        fizzbuttonButton.tap()
        app.buttons["numberButton"].tap()
        app.buttons["numberButton"].tap()
        app.buttons["fizzBuzzButton"].tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
        
    }
    
}
