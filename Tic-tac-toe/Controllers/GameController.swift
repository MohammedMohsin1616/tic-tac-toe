//
//  ViewController.swift
//  Tic-tac-toe
//
//  Created by Mohammed Mohsin Sayed on 10/26/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TicTacToeView {
    
    let game = Model()
    var activePlayer = 1
    var isGameActive = false
    
    @IBOutlet var buttonsCollection: [UIButton]!
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        isGameActive = true 
        if(game.gameState[sender.tag - 1] == 0) {
            
            updateGameState(object: sender, isActive: true)
        }
        
        let winner = game.weHaveAWinner()
        if winner != -1 {
            
            showAlert("Player \(winner) has won")
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game.view = self
        game.gameState = [Int] (repeating: 0, count:9)
        activePlayer = 1
        isGameActive = false
        updateGameState(object: UIButton(), isActive: false)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func updateGameState(object: AnyObject, isActive: Bool) {
        
        if isActive {
            game.gameState[object.tag - 1] = activePlayer
            
            if(activePlayer == 1) {
                
                object.setImage(UIImage(named: "Cross.png"), for: .normal)
            }
            else {
                
                object.setImage(UIImage(named: "Nought.png"), for: .normal)
            }
            
            
            activePlayer = game.togglePlayer(active: activePlayer)
        }
        else {
            
            for button in buttonsCollection {
                button.setImage(nil, for: [])
            }
        }
    }


}

