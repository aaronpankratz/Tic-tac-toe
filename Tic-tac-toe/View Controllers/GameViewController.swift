//
//  ViewController.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/18/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, PlayerDelegate {
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resetGame()
        self.playGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resetGame() -> Void {
        let x = X()
        x.delegate = self
        let o = O()
        o.delegate = self
        
        self.game = Game(playerOne: x, playerTwo: o)
    }
    
    func playGame() -> Void {
        while(self.game.isInProgress()) {
            let player = self.game.getPlayerUpNext()
            let space = player.pickSpace(self.game)
            let turn = Turn(player: player, space: space)
            self.game.turns.append(turn)
        }
        
        NSLog("game complete! winner is: \(self.game.getWinner())")
    }
    
    func getSpaceForPlayer(player: Player) -> Space {
        return Space()
    }
}

