//
//  GameModel.swift
//  Tic-tac-toe
//
//  Created by Mohammed Mohsin Sayed on 10/28/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class Model {
    
    var view: TicTacToeView! 
    var gameState: [Int] = []
    let winningCombinations = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]]
  
    
    func togglePlayer(active: Int) -> Int {
        if active == 1 {
            return 2
        }
        return 1
    }
    
    func weHaveAWinner() -> Int {
        
        var winner: Int = -1
        
        for combination in winningCombinations {
            
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]]
                && gameState[combination[1]] == gameState[combination[2]] {
                
                winner = gameState[combination[0]]
            }
        }
        
        
        return winner
    }
    
}
