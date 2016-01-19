//
//  Game.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/19/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class Game: AnyObject {
    var playerOne: Player
    var playerTwo: Player
    var grid: Grid
    var turns: [Turn]
    
    init(playerOne: Player, playerTwo: Player) {
        self.playerOne = playerOne
        self.playerTwo = playerTwo
        self.grid = Grid(rowCount: 3, columnCount: 3)
        self.turns = [Turn]()
    }
}