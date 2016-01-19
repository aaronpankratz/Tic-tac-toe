//
//  Player.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/19/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

protocol PlayerDelegate {
    func getSpaceForPlayer(player: Player) -> Space
}

class Player: AnyObject {
    var delegate: PlayerDelegate!

    func pickSpace(game: Game) -> Space {
        return self.delegate.getSpaceForPlayer(self)
    }
}