//
//  ViewController.swift
//  gameOfDice
//
//  Created by Roberto Manese III on 12/16/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceOne_image: UIImageView!
    @IBOutlet weak var diceTwo_image: UIImageView!
    @IBOutlet weak var diceSum_lbl: UILabel!
    @IBOutlet weak var pointHolder_lbl: UILabel!
    @IBOutlet weak var cash_lbl: UILabel!
    @IBOutlet weak var result_lbl: UILabel!
    
    var holder:Int?
    var playerWins = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func roll_buttonTapped(_ sender: Any) {
        rollDice()
    }
    
    func rollDice() {
        let dice1 = arc4random_uniform(6) + 1
        let dice2 = arc4random_uniform(6) + 1
        let diceSum = Int(dice1 + dice2)
        
        if diceSum == 7 || diceSum == 11 {
            result_lbl.text = "win"
            playerWins *= 2
            holder = nil
        } else if diceSum == 2 || diceSum == 3 || diceSum == 12{
            playerWins -= 10
            result_lbl.text = "lose"
            holder = nil
        } else if diceSum == holder {
            holder = nil
            result_lbl.text = "doubleWin"
            playerWins *= 3
        }
        
        if diceSum == 4 || diceSum == 5 || diceSum == 6 || diceSum == 8 || diceSum == 9 || diceSum == 10 {
            if holder == nil {
                holder = diceSum
                pointHolder_lbl.text = String(diceSum)
            }
        }
        
        
        
        
        diceOne_image.image = UIImage(named: String(dice1))
        diceTwo_image.image = UIImage(named: String(dice2))
        diceSum_lbl.text = String(diceSum)
        cash_lbl.text = String(playerWins)

    }
    

}

