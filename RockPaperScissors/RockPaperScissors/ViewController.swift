//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Roberto Manese III on 11/26/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var opponentScoreLabel: UILabel!
    
    @IBOutlet weak var playerChoice: UIImageView!
    @IBOutlet weak var opponentChoice: UIImageView!
    
    var opponentScore = 0
    var playerScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playerChoiceTapped(_ sender: UIButton) {
        let computerChoice = arc4random_uniform(3) + 1
        
        // change image for opponent choice
        if computerChoice == 1 {
            opponentChoice.image = UIImage(named: "rock")
            if sender.tag == 3 {
                opponentScore += 1
                opponentScoreLabel.text = "opponent: \(opponentScore)"
            }
        } else if computerChoice == 2 {
            opponentChoice.image = UIImage(named: "paper")
            if sender.tag == 1 {
                opponentScore += 1
                opponentScoreLabel.text = "opponent: \(opponentScore)"
            }
        } else if computerChoice == 3 {
            opponentChoice.image = UIImage(named: "scissors")
            if sender.tag == 2 {
                opponentScore += 1
                opponentScoreLabel.text = "opponent: \(opponentScore)"
            }
        }
        
        // change image for player
        if sender.tag == 1 {
            playerChoice.image = UIImage(named: "rock")
            if computerChoice == 3 {
                playerScore += 1
                playerScoreLabel.text = "player: \(playerScore)"
            }
        } else if sender.tag == 2 {
            playerChoice.image = UIImage(named: "paper")
            if computerChoice == 1 {
                playerScore += 1
                playerScoreLabel.text = "player: \(playerScore)"
            }
        } else if sender.tag == 3 {
            playerChoice.image = UIImage(named: "scissors")
            if computerChoice == 2 {
                playerScore += 1
                playerScoreLabel.text = "player: \(playerScore)"
            }
        }
    }
}


