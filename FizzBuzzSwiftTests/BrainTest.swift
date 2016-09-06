//
//  BrainTest.swift
//  FizzBuzzSwift
//
//  Created by Mali McCalla on 06/09/2016.
//  Copyright © 2016 Mali McCalla. All rights reserved.
//
@testable import FizzBuzzSwift
import XCTest

class BrainTest: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleBy(divisor: 3, number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisiblebyThree() {
        let result = brain.isDivisibleBy(divisor: 3, number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleBy(divisor: 5, number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisiblebyFive() {
        let result = brain.isDivisibleBy(divisor: 5, number: 3)
        XCTAssertEqual(result, false)
    }
    
    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleBy(divisor: 15, number: 13)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleBy(divisor: 15, number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testSayNumber() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, Move.Number)
    }
}
