//
//  O.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/19/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class O: Player {
    override func takes(turn: Turn) -> Bool {
        return false
    }
}