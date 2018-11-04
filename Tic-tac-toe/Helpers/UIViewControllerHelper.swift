//
//  UIViewControllerHelper.swift
//  Tic-tac-toe
//
//  Created by Mohammed Mohsin Sayed on 10/28/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(_ message: String){
        
        let alertController = UIAlertController(title: "Game Over", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Play Again", style: .default, handler: {action in
            
            switch action.style{
            case .default:
                self.viewDidLoad()
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }
        }))
        
        
        
        
        self.present(alertController , animated: true)
    }
    
}
