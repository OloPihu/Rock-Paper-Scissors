//
//  ViewController.swift
//  Kamień, nożyce, papier
//
//  Created by Aleksander  on 26/03/2019.
//

import UIKit

class SecondTable: UIViewController {
    
    
    @IBOutlet weak var rock: UIButton!
    
    @IBOutlet weak var paper: UIButton!
    
    @IBOutlet weak var scissors: UIButton!
    
    @IBOutlet weak var cpuViewTabel: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    @IBOutlet weak var playerNameLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    var playerNickValue = ""
    var winCondition = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerNameLabel.text = playerNickValue
        
    }
    
    @IBAction func rockButton(_ sender: Any) {
        
        rock.isEnabled = true
        print("rock")
        let losowyZnak = arc4random_uniform(3) + 1
        // print("losowy znak to: \(losowyZnak)")
        cpuViewTabel.image = UIImage(named: "znak\(losowyZnak)")
        print(losowyZnak)
        if losowyZnak == 1 {
            
        }
        else if losowyZnak == 2 {
            cpuScore += 1
            
            cpuScoreLabel.text = String(cpuScore)
            
        }
        else if losowyZnak == 3 {
            
            playerScore += 1
            
            playerScoreLabel.text = String(playerScore)
            
        }
        endGame()
    }
    
    @IBAction func paperButton(_ sender: Any) {
        
        paper.isEnabled = true
        
        let losowyZnak = arc4random_uniform(3) + 1
        
        cpuViewTabel.image = UIImage(named: "znak\(losowyZnak)")
        
        if losowyZnak == 1 {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
            
        }
            
        else if losowyZnak == 2 {
            
            
        }
        else if losowyZnak == 3 {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
            
        }
        endGame()
        
    }
    
    
    
    
    @IBAction func scissorsButton(_ sender: Any) {
        
        scissors.isEnabled = true
        
        let losowyZnak = arc4random_uniform(3) + 1
        
        cpuViewTabel.image = UIImage(named: "znak\(losowyZnak)")
        
        if losowyZnak == 1 {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
            
        }
        else if losowyZnak == 2 {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
            
        }
        else if losowyZnak == 3 {
            
        }
        endGame()
    }
    
    func endGame() {
        
        if playerScore == winCondition {
            
            rock.isEnabled = false
            paper.isEnabled = false
            scissors.isEnabled = false
            
       
            endGameAlert(title: "Congratulations!", message: "\(String(describing: playerNameLabel.text!)) wins the game")
            
        }
        else if cpuScore == winCondition {
            
            rock.isEnabled = false
            paper.isEnabled = false
            scissors.isEnabled = false
            
            endGameAlert(title: "Bad luck!", message: "CPU wins the game")
        }
        
        
    }
    @IBAction func restartGameButton(_ sender: Any) {
        
        rock.isEnabled = true
        paper.isEnabled = true
        scissors.isEnabled = true
        
        cpuViewTabel.image = UIImage(named: "startcpu")
        
        cpuScore = 0
        playerScore = 0
        playerScoreLabel.text = String(playerScore)
        cpuScoreLabel.text = String(cpuScore)
    }
    
    func endGameAlert (title:String, message:String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: { (action) in
            
        }
        ))
        
        self.present(alert, animated: true)
        
    }
}
