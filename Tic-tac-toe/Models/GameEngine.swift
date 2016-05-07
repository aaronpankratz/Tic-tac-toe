//
//  GameEngine.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 5/5/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

class GameEngine {
    
    private var marks = [Mark?](count:10, repeatedValue: nil)
    private var computerStrategy: ComputerStrategy = FirstAvailable()
    
    // returns computer's cell
    func pickCell(cellId: Int) {
        marks[cellId] = Mark(playerSymbol: "X", cellId: cellId)
        guard !checkForWinner() else {
            return
        }
        guard !checkForTie() else {
            return
        }
        let markOptional = computerStrategy.pickMark(marks)
        if let mark = markOptional {
            marks[mark.cellId] = mark;
            let userInfo = ["ComputerMark" : mark]
            NSNotificationCenter.defaultCenter().postNotificationName("GameEngineComputerTurnComplete", object: self, userInfo: userInfo)
        }
        guard !checkForWinner() else {
            return;
        }
        guard !checkForTie() else {
            return;
        }
    }
    
    private func checkForWinner() -> Bool {
        var foundWinner = false
        var playerSymbol = ""
        
        // check rows
        for i in [1, 4, 7] {
            if marks[i]?.playerSymbol != nil
                && marks[i+1]?.playerSymbol != nil
                && marks[i+2]?.playerSymbol != nil
                && marks[i]?.playerSymbol == marks[i+1]?.playerSymbol
                && marks[i]?.playerSymbol == marks[i+2]?.playerSymbol {
                foundWinner = true;
                playerSymbol = (marks[i]?.playerSymbol)!
                break;
            }
        }
        
        // check columns
        if (!foundWinner) {
            for i in [1,2,3] {
                if marks[i]?.playerSymbol != nil
                    && marks[i+3]?.playerSymbol != nil
                    && marks[i+6]?.playerSymbol != nil
                    && marks[i]?.playerSymbol == marks[i+3]?.playerSymbol
                    && marks[i]?.playerSymbol == marks[i+6]?.playerSymbol {
                    foundWinner = true;
                    playerSymbol = (marks[i]?.playerSymbol)!
                    break;
                }
            }
        }
        
        // check first diagonal
        if (!foundWinner) {
            if marks[1]?.playerSymbol != nil
                && marks[5]?.playerSymbol != nil
                && marks[9]?.playerSymbol != nil
                && marks[1]?.playerSymbol == marks[5]?.playerSymbol
                && marks[1]?.playerSymbol == marks[9]?.playerSymbol {
                foundWinner = true;
                playerSymbol = (marks[1]?.playerSymbol)!
            }
        }
        
        // check second diagonal
        if (!foundWinner) {
            if  marks[3]?.playerSymbol != nil
                && marks[5]?.playerSymbol != nil
                && marks[7]?.playerSymbol != nil
                && marks[3]?.playerSymbol == marks[5]?.playerSymbol
                && marks[3]?.playerSymbol == marks[7]?.playerSymbol {
                foundWinner = true;
                playerSymbol = (marks[3]?.playerSymbol)!
            }
        }
        
        if (foundWinner) {
            let userInfo = ["WinnerMark" : Mark(playerSymbol: playerSymbol, cellId: 0)]
            NSNotificationCenter.defaultCenter().postNotificationName("GameEngineFoundWinner", object: self, userInfo: userInfo)
        }
        return foundWinner;
    }
    
    func checkForTie() -> Bool {
        for i in 1..<marks.count {
            if (marks[i] == nil) {
                return false;
            }
        }
        NSNotificationCenter.defaultCenter().postNotificationName("GameEngineFoundTie", object: self)
        return true;
    }
    
    func startOver() {
        marks = [Mark?](count:10, repeatedValue: nil)
        NSNotificationCenter.defaultCenter().postNotificationName("GameEngineStartOverComplete", object: nil)
    }
}
