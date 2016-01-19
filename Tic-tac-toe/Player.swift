//
//  Player.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/19/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class Player: AnyObject {
    func takes(turn: Turn) -> Bool {
        preconditionFailure("This method must be overridden")
    }
}