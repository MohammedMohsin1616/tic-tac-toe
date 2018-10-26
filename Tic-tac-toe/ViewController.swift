//
//  ViewController.swift
//  Tic-tac-toe
//
//  Created by Mohammed Mohsin Sayed on 10/26/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameState = [true, true, true, true, true, true, true, true, true]
    
    func togglePlayer(active: Int) -> Int {
        if active == 1 {
            return 2
        }
        return 1
    }
    var activePlayer = 1
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        if(gameState[sender.tag - 1]) { 
            
            if(activePlayer == 1) {
                
                sender.setImage(UIImage(named: "Cross.png"), for: .normal)
                activePlayer = togglePlayer(active: activePlayer)
            }
            else {
                
                sender.setImage(UIImage(named: "Nought.png"), for: .normal)
                activePlayer = togglePlayer(active: activePlayer)
            }
            
            gameState[sender.tag - 1] = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

