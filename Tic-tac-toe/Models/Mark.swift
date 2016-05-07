//
//  Mark.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 5/5/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class Mark {
    var playerSymbol : String
    var cellId : Int
    
    init(playerSymbol: String, cellId: Int) {
        self.playerSymbol = playerSymbol
        self.cellId = cellId
    }
}