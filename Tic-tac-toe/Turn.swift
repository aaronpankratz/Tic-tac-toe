//
//  Turn.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/19/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class Turn: AnyObject {
    var player: Player
    var space: Space
    
    init (player: Player, space: Space) {
        self.player = player
        self.space = space
    }
    
    func marks(space: Space) -> Bool {
        return false
    }
    
}