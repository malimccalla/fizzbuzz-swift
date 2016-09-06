//
//  ViewController.swift
//  FizzBuzzSwift
//
//  Created by Mali McCalla on 06/09/2016.
//  Copyright © 2016 Mali McCalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game : Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        gameScore = checkedGame.score
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender == numberButton {
            play(move: Move.Number)
        } else if sender == fizzButton {
            play(move: Move.Fizz)
        } else {
            play(move: Move.Buzz)
        }
        
    }
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    
    
}

