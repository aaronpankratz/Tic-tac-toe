//
//  StateMachine.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/18/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

enum TileValue {
    case Empty
    case PlayerOne
    case PlayerTwo
}

enum WinResult {
    case Draw
    case PlayerOne
    case PlayerTwo
}

protocol StateMachineDelegate {
    func matchDidFinish(result: WinResult) -> Void
}

class StateMachine {
    var delegate: StateMachineDelegate
    var board: Array<Array<TileValue>>
    
    init(delegate: StateMachineDelegate) {
        self.delegate = delegate
        self.board = [[TileValue]](count: 3, repeatedValue: [TileValue](count: 3, repeatedValue: TileValue.Empty))
    }
    
    func reset() -> Void {
        for (var row = 0; row < 3; ++row) {
            for (var column = 0; column < 3; ++column) {
                board[row][column] = TileValue.Empty
            }
        }
    }
    
    func performMove(row: Int, column: Int, value: TileValue) -> Bool {
        if (board[row][column] == TileValue.Empty) {
            board[row][column] = value
            self.checkWinCondition()
            return true;
        }
        else {
            return false;
        }
    }
    
    func checkWinCondition() -> Void {
        // TODO implement
    }
    
}