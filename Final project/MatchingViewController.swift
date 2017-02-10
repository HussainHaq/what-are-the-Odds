//
//  MatchingViewController.swift
//  Final project
//
//  Created by Hussain Haq  on 12/14/16.
//  Copyright © 2016 Hussain Haq . All rights reserved.
//

import UIKit

class MatchingViewController: UIViewController {
    
   
    @IBOutlet weak var button0Outlet: UIButton!
    @IBOutlet weak var button1Outlet: UIButton!
    var letter2 = "Odds"
    var letter1 = "Odds"
    var random0 = Int(arc4random_uniform(5))
    var random1 = Int(arc4random_uniform(5))
    var gameOver = false

    override func viewDidLoad() {
        super.viewDidLoad()
        button0Outlet.setTitle("Odds",for: .normal)
        button1Outlet.setTitle("Odds",for: .normal)
        random1 = Int(arc4random_uniform(5))
        random0 = Int(arc4random_uniform(5))
    
    }
    @IBAction func button0(_ sender: Any)
    {
        random0 = Int(arc4random_uniform(5))
        button0Outlet.setTitle("\(random0)",for: .normal)
        
    }
    @IBAction func button1(_ sender: Any) {
        random1 = Int(arc4random_uniform(5))
        button1Outlet.setTitle("\(random1)",for: .normal)
        winner()
    }
    func winner(){
        if (random0 == random1){
            for index in 1...5{
            print("Odd one out")
            self.displayWinningMessage("Odd one out")
            }
        }else if (random0 != random1){
            print("Odds were right")
            self.displayWinningMessage("Odds were right")
        }
    }
    func resetGame(){
            button1Outlet.setTitle("\(letter1)",for: .normal)
            button0Outlet.setTitle("\(letter2)",for: .normal)
            }
    func displayWinningMessage(_ message: String){
        let alert = UIAlertController(title: message, message:nil,preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Rest", style: .default){ (func) -> Void in self.resetGame()
            }
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
        gameOver = true
        let message = "Odds win"
        print(message)
        gameOver = true
        }
    }

