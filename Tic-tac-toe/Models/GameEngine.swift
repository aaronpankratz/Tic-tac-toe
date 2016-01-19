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
        let x = X()
        let o = O()
        self.game = Game(playerOne: x, playerTwo: o)
    }
    
}