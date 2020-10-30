//
//  Die.swift
//  DiceRoll
//
//  Created by  on 10/30/20.
//  Copyright © 2020 Owen Lieberman. All rights reserved.
//

import Foundation

class Die {
    
    var dieResult: Int
    var dieNumber: Int
    
    
    init() {
        dieNumber = -1
        dieResult = 1
    }
    
    init(rolled: Int, number: Int) {
        dieNumber = number
        dieResult = rolled
        randomResult()
    }
    
    func randomResult() {
        dieResult = Int.random(in: 1...6)
    }
}
