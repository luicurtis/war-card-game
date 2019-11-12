//
//  ViewController.swift
//  war-card-game
//
//  Created by Curtis Lui on 2019-11-12.
//  Copyright © 2019 Curtis Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerCard: UIImageView!
    
    @IBOutlet weak var cpuCard: UIImageView!
    
    @IBOutlet weak var playerScorelabel: UILabel!
    
    @IBOutlet weak var cpuScorelabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        // Randomize a number
        // Need to randomize from 2 to 14 incluside
        // Gives numbers from 0 to 12, then add 2
        let playerNumber = arc4random_uniform(13) + 2
        playerCard.image = UIImage(named: "card" + String(playerNumber))
        
        let cpuNumber = arc4random_uniform(13) + 2
        cpuCard.image = UIImage(named: "card" + String(cpuNumber))
        
        // Update score and labels
        if (playerNumber > cpuNumber)
        {
            playerScore += 1
            playerScorelabel.text = String(playerScore)
        }
        else if (playerNumber < cpuNumber)
        {
            cpuScore += 1
            cpuScorelabel.text = String(cpuScore)
        }
        
        
    }
    
}

