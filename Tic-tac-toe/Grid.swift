//
//  Grid.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/19/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class Grid: AnyObject {
    var spaces: [[Space]]
    
    init(rowCount: Int, columnCount: Int) {
        self.spaces = [[Space]](count: rowCount, repeatedValue: [Space](count: columnCount, repeatedValue: Space()))
    }
}