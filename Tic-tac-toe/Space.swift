//
//  Space.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/19/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

// 9 unique spaces

class Space: AnyObject {
    var id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    class func getInitialSpaces() -> NSOrderedSet {
        let initialSpaces = NSMutableOrderedSet()
        
        for (var i = 0; i < 9; ++i) {
            let space = Space(id: i)
            initialSpaces.addObject(space)
        }
        return initialSpaces
    }
}