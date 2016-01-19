//
//  StateMachine.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/18/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class GameEngine {
    var game: Game!
    
    init() {

    }
    
    func reset() -> Void {
        let x = X()
        let o = O()
        self.game = Game(playerOne: x, playerTwo: o)
    }
    
    func start() -> Void {
        self.game.start()
        while(self.game.isInProgress()) {
            let player = self.game.getPlayerUpNext()
            let space = player.pickSpace()
            let turn = Turn(player: player, space: space)
            self.game.turns.append(turn)
        }
        
        NSLog("game complete! winner is: \(self.game.getWinner())")
    }
}