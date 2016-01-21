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
    var availableTurns: NSOrderedSet
    var turnHistory: [Turn]
    
    init(playerOne: Player, playerTwo: Player) {
        self.playerOne = playerOne
        self.playerTwo = playerTwo
        self.turnHistory = [Turn]()
        self.availableTurns = Space.getInitialSpaces()
    }
    
    func isInProgress() -> Bool {
        // TODO handle draw
        let winner = self.getWinner()
        if (winner != nil) {
            return false
        }
        else {
            return true
        }
    }
    
    func getPlayerUpNext() -> Player {
        if ((self.turnHistory.count % 2) == 0) {
            return self.playerOne
        }
        else {
            return self.playerTwo
        }
    }
    
    func getWinner() -> Player? {
        // TODO handle draw
        if (self.turnHistory.count < 5) {
            return nil
        }
        
        // iterate over turns
        // see if a players collection of turns satisfies a win condition
        // return that player
        return Player()
    }

}