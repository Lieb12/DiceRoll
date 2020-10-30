//
//  ViewController.swift
//  DiceRoll
//
//  Created by  on 10/30/20.
//  Copyright © 2020 Owen Lieberman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var resultList: [Int] = []
    var timesTapped: Int = 0
    
    @IBOutlet weak var leftDie: UIImageView!
    @IBOutlet weak var rightDie: UIImageView!
    @IBOutlet var screenTapRec: UITapGestureRecognizer!
    var firstDie = Die(rolled: 0, number: 0)
    var secondDie = Die(rolled: 0, number: 1)
    
    @IBOutlet weak var tapToRollTxt: UILabel!
    @IBOutlet weak var firstDieTxt: UILabel!
    @IBOutlet weak var secondDieTxt: UILabel!
    @IBOutlet weak var totalText: UILabel!
    @IBOutlet weak var threeAgo: UILabel!
    @IBOutlet weak var twoAgo: UILabel!
    @IBOutlet weak var oneAgo: UILabel!
    
    let red1 = UIImage(named: "/diceImgs/diceRed1.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        //array and displaying past 3 rolls
        
    }
    
}
