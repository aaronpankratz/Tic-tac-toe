//
//  TileButton.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/18/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation
import UIKit

struct TileButtonCoordinate {
    var row: BoardRow
    var column: BoardColumn
}

enum BoardRow {
    case One
    case Two
    case Three
}

enum BoardColumn {
    case One
    case Two
    case Three
}

class TileButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }

}