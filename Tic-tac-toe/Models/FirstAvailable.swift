//
//  FirstAvailable.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 5/6/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class FirstAvailable: AnyObject, ComputerStrategy {
    func pickMark(marks: [Mark?]) -> Mark? {
        for i in 1..<marks.count {
            if (marks[i] == nil) {
                return Mark(playerSymbol: "O", cellId: i)
            }
        }
        return nil
    }
}