//
//  Tic_tac_toeTests.swift
//  Tic-tac-toeTests
//
//  Created by Aaron Pankratz on 1/18/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import XCTest
@testable import Tic_tac_toe

class Tic_tac_toeTests: XCTestCase, StateMachineDelegate {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStateMachine() {
        let stateMachine = StateMachine(delegate: self)
        var totalTiles = 0
        for row in stateMachine.board {
            for _ in row {
                ++totalTiles
            }
        }
        XCTAssert(totalTiles == 9, "board should have 9 tiles after initialization")
        
        XCTAssert(stateMachine.performMove(0, column: 0, value: TileValue.PlayerOne))
        XCTAssert(stateMachine.board[0][0] == TileValue.PlayerOne)
        
        // can't make the same move twice
        XCTAssert(!stateMachine.performMove(0, column: 0, value: TileValue.PlayerOne))
        XCTAssert(stateMachine.board[0][0] == TileValue.PlayerOne)
        
        XCTAssert(!stateMachine.performMove(0, column: 0, value: TileValue.PlayerTwo))
        XCTAssert(stateMachine.board[0][0] == TileValue.PlayerOne)
        
        // reset set's all the tiles to empty
        stateMachine.reset()
        for (row_index, row) in stateMachine.board.enumerate() {
            for (column_index, _) in row.enumerate() {
                XCTAssert(stateMachine.board[row_index][column_index] == TileValue.Empty, "board should have all empty tiles")
            }
        }
    }
    
    //TODO test win condition
    
    func matchDidFinish(result: WinResult) -> Void {
        
    }
    
}
