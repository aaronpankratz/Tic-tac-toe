//
//  ComputerStrategy.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 5/6/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

protocol ComputerStrategy {
    func pickMark(marks: [Mark?]) -> Mark?
}