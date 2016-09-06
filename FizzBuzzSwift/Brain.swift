//
//  Brain.swift
//  FizzBuzzSwift
//
//  Created by Mali McCalla on 06/09/2016.
//  Copyright © 2016 Mali McCalla. All rights reserved.
//

import Foundation


class Brain: NSObject {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
         return isDivisibleBy(divisor: 15, number: number)
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return .FizzBuzz
        } else if  isDivisibleByFive(number: number){
            return .Buzz
        } else if isDivisibleByThree(number: number) {
            return .Fizz
        } else {
            return Move.Number
        }
    }
    
}
