//
//  ViewController.swift
//  DiceRoll
//
//  Created by  on 10/30/20.
//  Copyright © 2020 Owen Lieberman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var resultList: [Int] = [0, 0, 0]
    var timesTapped: Int = 0
    
    var wins = 0
    var losses = 0
    
    @IBOutlet weak var leftDie: UIImageView!
    @IBOutlet weak var rightDie: UIImageView!
    @IBOutlet var screenTapRec: UITapGestureRecognizer!
    var firstDie = Die(rolled: 0, number: 0)
    var secondDie = Die(rolled: 0, number: 1)
    
    @IBOutlet weak var winLossTracker: UILabel!
    @IBOutlet weak var tapToRollTxt: UILabel!
    @IBOutlet weak var firstDieTxt: UILabel!
    @IBOutlet weak var secondDieTxt: UILabel!
    @IBOutlet weak var totalText: UILabel!
    @IBOutlet weak var threeAgo: UILabel!
    @IBOutlet weak var twoAgo: UILabel!
    @IBOutlet weak var oneAgo: UILabel!
    
    func winAlert() {
        let alert = UIAlertController(title: "You win!", message: "You rolled a winning number", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK!", style: .default, handler: nil))

        self.present(alert, animated: true)
        
        wins += 1
    }
    
    func lossAlert() {
        let alert = UIAlertController(title: "You lost.", message: "You rolled a losing number", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true)
        
        losses += 1
    }
    
    func updateArray() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winLossTracker.text = "\(wins)-\(losses)"
        tapToRollTxt.alpha = 1.0
    }

    
    @IBAction func screenTapped(_ sender: Any) {
        //makes "tap to roll" message disappear
        tapToRollTxt.alpha = 0.0
        
        // gets and displays individual die rolls.
        firstDie.randomResult()
        secondDie.randomResult()
        let firstRoll = firstDie.dieResult
        let secondRoll = secondDie.dieResult
        firstDieTxt.text! = String(firstRoll)
        secondDieTxt.text! = String(secondRoll)
        
        // gets and displays total
        let totalRoll = firstRoll + secondRoll
        totalText.text! = String(totalRoll)
        
        //changes image views to match numbers
        switch firstRoll {
        case 1:
            do {
                leftDie.image = UIImage(named: "diceRed1.png")
            }
        case 2:
        do {
            leftDie.image = UIImage(named: "diceRed2.png")
        }
        case 3:
        do {
            leftDie.image = UIImage(named: "diceRed3.png")
        }
        case 4:
            do {
                leftDie.image = UIImage(named: "diceRed4.png")
            }
        case 5:
        do {
            leftDie.image = UIImage(named: "diceRed5.png")
        }
        case 6:
        do {
            leftDie.image = UIImage(named: "diceRed6.png")
        }
        default:
            do {leftDie.image = UIImage(named: "diceRed1.png")}
        }
        
        //right die ImageView
        
        switch secondRoll {
        case 1:
            do {
                rightDie.image = UIImage(named: "diceRed1.png")
            }
        case 2:
            do {
                rightDie.image = UIImage(named: "diceRed2.png")
        }
        case 3:
            do {
                rightDie.image = UIImage(named: "diceRed3.png")
        }
        case 4:
            do {
                rightDie.image = UIImage(named: "diceRed4.png")
            }
        case 5:
            do {
                rightDie.image = UIImage(named: "diceRed5.png")
        }
        case 6:
            do {
                rightDie.image = UIImage(named: "diceRed6.png")
        }
        default:
            do {leftDie.image = UIImage(named: "diceRed1.png")}
        }
        
        // win/lose alerts
        switch totalRoll {
        case 7: do {
            winAlert()
            break
        }
        case 11: do {
            winAlert()
            break
        }
        case 2: do {
            lossAlert()
            break
        }
        case 3: do {
            lossAlert()
            break
        }
        case 12: do {
            lossAlert()
            break
        }
        default:
            break
        }
        
        //array and displaying past 3 rolls
            //1
        resultList.removeFirst()
        resultList.append(totalRoll)
        
            //3
        threeAgo.text = String(resultList[0])
        twoAgo.text = String(resultList[1])
        oneAgo.text = String(resultList[2]
        
        // track wins and losses
        let winString = String(wins)
        let lossString = String(losses)
        winLossTracker.text = "\(winString)-\(lossString)"
        
        
        
    }
    
}
